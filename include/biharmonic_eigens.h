#ifndef BIHARMONIC_EIGENS_H
#define BIHARMONIC_EIGENS_H
#include <Eigen/Core>
#include <Eigen/Dense>
#include <Eigen/Sparse>
// Calculates eigenvalues and eigenvector of discrete laplace-beltrami operator
// 
// Inputs:
//   V  #V by 3 list of vertex positions
//   F  #F by 3 list of triangle indices into the rows of V
//   K  Approximating Biharmonic Distance by taking first K summands in eq. (4)
// Outputs:
//   desiredEigenVectors  #V by K matrix of "biharmonic summands" where each column is the eigenvector divided by the associated eigenvalue
//      of the Laplace-Beltrami operator
//   desiredEigenValues  K-sized row vector of eigenvalues of discrete laplace-beltrami operator
// 
void biharmonic_eigens(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd & desiredEigenVectors,
  Eigen::RowVectorXd & desiredEigenValues);


#endif