#include "biharmonic_summands.h"
#include <Eigen/Core>
#include <iostream>
#include <igl/cotmatrix.h>
#include <igl/massmatrix.h>
#include <igl/eigs.h>
#include <igl/read_triangle_mesh.h>
using namespace std;

#include<igl/read_triangle_mesh.h>
#include "biharmonic_distance.h"
#include<Eigen/Core>
int main(int argc, char *argv[]){
    Eigen::MatrixXd V;
    Eigen::MatrixXi F;
    int K = 5;
    // Load in a mesh
    igl::read_triangle_mesh(argc>1 ? argv[1] : "../data/bunny.off", V, F);
    Eigen::MatrixXd D;
    biharmonic_distance(V, F, K, D);
    return 0;
}