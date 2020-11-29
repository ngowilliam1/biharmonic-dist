#include "biharmonic_distance.h"
#include "biharmonic_eigens.h"

void biharmonic_distance(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd &D)
{   
    D.resize(V.rows(), V.rows());
    D.setZero();
    Eigen::MatrixXd desiredEigenVectors;
    Eigen::RowVectorXd desiredEigenValues;
    biharmonic_eigens(V, F, K, desiredEigenVectors, desiredEigenValues);
    
    
    for (int i = 0; i < V.rows(); i++){
        for (int j = (i+1); j < V.rows(); j++){
            Eigen::RowVectorXd numerator = desiredEigenVectors.row(i) - desiredEigenVectors.row(j);
            D(i, j) = sqrt((numerator.array().rowwise()/desiredEigenValues.array()).pow(2.0).sum());
        }
    }
    // Converts upper triangular matrix into symmetric matrix extracted from the upper part of D
    D = Eigen::MatrixXd(D.selfadjointView<Eigen::Upper>());
}

// If K is not set, set K to 8
void biharmonic_distance(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  Eigen::MatrixXd &D)
{
    biharmonic_distance(V, F, 8, D);
}
