# Installation scripts for Tensorflow and Keras on Ubuntu 16.04 with Nvidia GPU

## Follow the below steps for installing Nvidia libraries and drivers, python virtual env tools, Tensorflow and Keras

> 1. Perform preinstallation checks as mentioned [here](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/#pre-installation-actions).
>
>2. Download deb packages for cuDNN 7.1 from [here](https://developer.nvidia.com/cudnn)(requires registration) and copy to the cloned repository.
>
>3. Run ```./install_nvidia_components.sh``` to install CUDA 9.0, cuDNN 7.1 and Nvidia graphic drivers.
>
>4. Reboot your system to complete the installation.
>
>5. Run ```. ./install_TF.sh``` command to install and validate Tensorflow and Keras.

* **Note:** Nvidia drivers are installed during CUDA installation.