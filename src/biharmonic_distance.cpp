#include "biharmonic_distance.h"
#include "biharmonic_summands.h"
#include <iostream>
using namespace std;
void biharmonic_distance(
  const Eigen::MatrixXd & V,
  const Eigen::MatrixXi & F,
  const int K,
  Eigen::MatrixXd &D)
{   
    D.setZero();
    Eigen::MatrixXd S;
    biharmonic_summands(V, F, K, S);
    D.resize(V.rows(), V.rows());
    
    for (int i = 0; i < V.rows(); i++){
        for (int j = i; j < V.rows(); j++){
            D(i, j) = sqrt((S.row(i)-S.row(j)).array().pow(2.0).sum());
        }
    }
    // Converts upper triangular matrix into symmetric matrix extracted from the upper part of D
    D = Eigen::MatrixXd(D.selfadjointView<Eigen::Upper>());
    
}