#!/bin/sh

# Shell script to install 
# 1. cuda 9.0
# 2. Nvidia graphic drivers
# 3. cuDNN 7.1  for tensorflow

# Prerequsites such as cuda capable GPU, Linux headers and 
# dev packages must be checked manually before running this script.

# Nvidia drivers are automatically installed with cuda so no need to 
# worry about that.

echo "This script needs cuDNN deb files to be present locally as they cannot be downloaded throught wget or curl....\n"

# CUDA download
CUDA_PKG=cuda-repo-ubuntu1604_9.0.176-1_amd64.deb
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_PKG}

# Adding CUDA 
sudo dpkg -i ${CUDA_PKG}

# Adding cudNN
sudo dpkg -i libcudnn7_7.1.4.18-1+cuda9.0_amd64.deb
sudo dpkg -i libcudnn7-dev_7.1.4.18-1+cuda9.0_amd64.deb

sudo apt-key add /var/cuda-repo-9.0.176-1/7fa2af80.pub

sudo apt-get update

# Installing CUDA
sudo apt-get install cuda=9.0.176-1

# Installing cuDNN
sudo apt-get install libcudnn7
sudo apt-get install libcudnn7-dev

# Installing cuda command line tools
sudo apt-get install cuda-command-line-tools-9-0


# Adding required env variables to .bashrc
echo 'export PATH=/usr/local/cuda-9.2/bin${PATH:+:${PATH}}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-9.2/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc

echo "\n Installation complete! Please reboot the system...."
