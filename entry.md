# Biharmonic Distance


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

