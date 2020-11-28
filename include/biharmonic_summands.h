#ifndef BIHARMONIC_SUMMANDS_H
#define BIHARMONIC_SUMMANDS_H
#include <Eigen/Core>
#include <Eigen/Dense>
#include <Eigen/Sparse>
// Calculates a matrix of Biharmonic Summands that can be used to calculate the biharmonic distance between
// any pairs of vertices.
//
// Inputs:
//   V  #V by 3 list of vertex positions
//   F  #F by 3 list of triangle indices into the rows of V
//   K  Approximating Biharmonic Distance by taking first K summands in eq. (4)
// Outputs:
//   S  #V by K matrix of "biharmonic summands" where each column is the eigenvector divided by the associated eigenvalue
//      of the Laplace-Beltrami operator
// 
void biharmonic_summands(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd &S);


#endif