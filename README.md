# Installation scripts for Tensorflow and Keras on Ubuntu 16.04 with Nvidia GPU

## Follow the below steps for installing Nvidia libraries and drivers, python virtual env tools, Tensorflow and Keras

> 1. Perform preinstallation checks as mentioned [here](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/#pre-installation-actions).
>
>2. Download deb packages for cuDNN 7.1 from [here](https://developer.nvidia.com/cudnn)(requires registration) and copy to the cloned repository.
>
>3. Run ```./install_nvidia_components.sh``` to install CUDA 9.0, cuDNN 7.1 and Nvidia graphic drivers.
>
>4. Reboot the system to complete the installation.
>
>5. Run ```source ./install_TF.sh``` command to install and validate Tensorflow and Keras.
>
>6. Post step 5 virtual environment will be activated. Run ```deactivate``` command to exit the same. It can be activated again by running ```source ./tensorflow/venv/bin/activate```.

* **Note:**
  * Nvidia drivers are installed during CUDA installation.
  * The virtual environment will be created under **./tensorflow/venv**. This path can be changed in *install_TF.sh* script.