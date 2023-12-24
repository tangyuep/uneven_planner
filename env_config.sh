#!/bin/bash
set -e
# apt
sudo apt install \
                ros-noetic-robot-state-publisher* \
                ros-noetic-joint-state-controller* \
                ros-noetic-controller* \
                ros-noetic-velocity-controllers* \
                ros-noetic-effort-controllers \
                ros-noetic-position-controllers \
                ros-noetic-gazebo-ros-control \
                ros-noetic-hector-gazebo \
                ros-noetic-effort-controllers \
                ros-noetic-joint-state-controller \
                ros-noetic-position-controllers \
                ros-noetic-ompl* \
                ros-noetic-pcl* \
                ros-noetic-ackermann-msgs 

# osqp
mkdir tmp
cd tmp
wget https://github.com/osqp/osqp/releases/download/v0.6.2/complete_sources.tar.gz
tar -zxf complete_sources.tar.gz
cd osqp
mkdir build
cd build
cmake ..
make
sudo make install
cd ../../..
rm -rf tmp

# osqp-eigen
mkdir tmp
cd tmp
wget https://github.com/robotology/osqp-eigen/archive/refs/tags/v0.8.0.tar.gz
tar -zxf v0.8.0.tar.gz
cd osqp-eigen-0.8.0
mkdir build
cd build
cmake ..
make
sudo make install
cd ../../..
rm -rf tmp
