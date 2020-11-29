#include <igl/opengl/glfw/Viewer.h>
#include <igl/exact_geodesic.h>
#include <igl/unproject_onto_mesh.h>
#include <igl/parula.h>
#include <igl/isolines_map.h>
#include <iostream>
#include "biharmonic_distance.h"
#include <igl/read_triangle_mesh.h>

// Code Taken from https://github.com/libigl/libigl/blob/master/tutorial/206_GeodesicDistance/main.cpp to load geodesic distance for the viewer
int main(int argc, char *argv[])
{
  Eigen::MatrixXd V;
  Eigen::MatrixXi F;
  igl::opengl::glfw::Viewer viewer;

  std::cout<<R"(
  B,b        Show Biharmonic Distance (8 summands)
  G,g        Show Geodesic Distance
  X,x        Show Biharmonic Distance (2 summands)
  C,c        Show Biharmonic Distance (4 summands)
  V,v        Show Biharmonic Distance (6 summands)
)";
  // Load a mesh in OFF format
  igl::read_triangle_mesh(argc>1 ? argv[1] : "../data/bunny.off", V, F);
  Eigen::MatrixXd D;
  int K = 8;
  int calculatedK = 8;
  biharmonic_distance(V, F, K, D);
  int method = 0;
  int vid = 0;
  const auto update_distance = [&](const int vid, const int method)
  {
    Eigen::VectorXi VS,FS,VT,FT;
    // The selected vertex is the source
    VS.resize(1);
    VS << vid;
    // All vertices are the targets
    VT.setLinSpaced(V.rows(),0,V.rows()-1);
    // Plot the mesh
    Eigen::MatrixXd CM;
    igl::parula(Eigen::VectorXd::LinSpaced(25,0,1).eval(),false,CM);
    igl::isolines_map(Eigen::MatrixXd(CM),CM);
    viewer.data().set_colormap(CM);
    if (method == 0){
      if (K != calculatedK){
        biharmonic_distance(V, F, K, D);
        calculatedK = K;
      }
      std::cout<<"Computing biharmonic distance to vertex "<<vid<<"..."<<std::endl;
      viewer.data().set_data(D.row(vid));
    }
    // for geodesic distance
    if (method == 1){
      std::cout<<"Computing geodesic distance to vertex "<<vid<<"..."<<std::endl;
      Eigen::VectorXd d;
      igl::exact_geodesic(V,F,VS,FS,VT,FT,d);
      viewer.data().set_data(d);
    }
  };

  // Plot a distance when a vertex is picked
  viewer.callback_mouse_down =
  [&](igl::opengl::glfw::Viewer& viewer, int, int)->bool
  {
    int fid;
    Eigen::Vector3f bc;
    // Cast a ray in the view direction starting from the mouse position
    double x = viewer.current_mouse_x;
    double y = viewer.core().viewport(3) - viewer.current_mouse_y;
    if(igl::unproject_onto_mesh(
      Eigen::Vector2f(x,y),
      viewer.core().view,
      viewer.core().proj,
      viewer.core().viewport,
      V,
      F,
      fid,
      bc))
    {
      int max;
      bc.maxCoeff(&max);
      vid = F(fid,max);
      update_distance(vid, method);
      return true;
    }
    return false;
  };
  viewer.callback_key_pressed = 
    [&](igl::opengl::glfw::Viewer &,unsigned char key,int)->bool
  {
    switch(key)
    {
      case 'B':
      case 'b':
        method = 0;
        K = 8;
        std::cout << "Now using " << K << " summands" << std::endl;
        update_distance(vid, method);
        break;
      case 'G':
      case 'g':
        method = 1;
        update_distance(vid, method);
        break;
      case 'X':
      case 'x':
        method = 0;
        K = 2;
        std::cout << "Now using " << K << " summands" << std::endl;
        update_distance(vid, method);
        break;
      case 'C':
      case 'c':
        method = 0;
        K = 4;
        std::cout << "Now using " << K << " summands" << std::endl;
        update_distance(vid, method);
        break;
      case 'V':
      case 'v':
        method = 0;
        K = 6;
        std::cout << "Now using " << K << " summands" << std::endl;
        update_distance(vid, method);
        break;
      default:
        return false;
    }
    return true;
  };


  viewer.data().set_mesh(V,F);
  viewer.data().show_lines = false;

  std::cout << "Click on mesh to define new source.\n" << std::endl;
  std::cout << "Now using " << K << " summands" << std::endl;
  update_distance(vid, 0);
  return viewer.launch();
}
