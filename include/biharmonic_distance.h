#ifndef BIHARMONIC_DISTANCE_H
#define BIHARMONIC_DISTANCE_H
#include <Eigen/Core>
#include <Eigen/Dense>
#include <Eigen/Sparse>
// Given a surface mesh (V,F) compute the biharmonic distance between all
// pairs of vertices
//
// Inputs:
//   V  #V by 3 list of vertex positions
//   F  #F by 3 list of triangle indices into the rows of V
//   K  Approximating Biharmonic Distance by taking first K summands in eq. (4)
// Outputs:
//   D  symmetric #V by #V matrix of distances where an entry (i,j) 
//      is the distance between vertex i and j
// 
void biharmonic_distance(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd &D);


#endif