#include "biharmonic_summands.h"
#include <igl/cotmatrix.h>
#include <igl/massmatrix.h>
#include <igl/eigs.h>
void biharmonic_summands(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd &S)
{
  Eigen::SparseMatrix<double> M, L;
  // #V by #V mass matrix using the Voronoi area as denoted in the paper
  igl::massmatrix(V, F, igl::MASSMATRIX_TYPE_VORONOI, M);
  // L is a #V by #V cotangent matrix, each row i corresponding to V(i,:)
  igl::cotmatrix(V, F, L);
  // U is sorted eigen vectors (descending)
  Eigen::MatrixXd eigenVectors;
  // S is k list of sorted eigen values (descending)
  Eigen::VectorXd eigenValues;
  // Extract K+1 smallest eigenvalues/eigenvectors of the Laplace-Beltrami operator
  igl::eigs(L, M, K+1, igl::EIGS_TYPE_SM, eigenVectors, eigenValues);
  // We extracted the K+1 as the first one is a solution with zero energy (eigenvalue of zero) so we will disregard that one
  Eigen::MatrixXd desiredEigenVectors = eigenVectors.bottomRightCorner(V.rows(), K);
  Eigen::RowVectorXd desiredEigenValues = eigenValues.tail(K);

  // each column of S is the eigenvector divided by the associated eigenvalue of the Laplace-Beltrami operator
  S.resize(V.rows(), K);
  for (int i = 0; i < K; i++){
      S.col(i) = desiredEigenVectors.col(i)/abs(desiredEigenValues(i));
  }
}
