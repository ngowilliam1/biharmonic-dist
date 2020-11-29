# Biharmonic Distance
The biharmonic distance between two points (x,y) is a distance measure based on the biharmonic differential operator.
For more information view [entry](https://github.com/ngowilliam1/biharmonic-dist/blob/main/entry.md) and
[paper](https://www.cs.princeton.edu/~funk/biharmonic.pdf).

## Getting Started
Clone recursively this repository
 
    git clone --recursive https://github.com/ngowilliam1/biharmonic-dist.git


## Build & Execution

This follows the cmake/make build routine. Starting in this directory, issue:

    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make 

Once built, you can execute the visualization from inside the `build/` by running
on a given mesh

    ./biharmonic 

or to load alternative meshes (in .off format):

    ./smoothing [path to mesh]

![](images/bunny-mesh.jpg)