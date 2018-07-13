#!/bin/sh

py_ver=`python3 -V`
if [ -z py_ver ]
then
	echo "Python not installed. Please install the same and rerun this script!"
	echo "Exiting...!!!"
	exit 1
fi

pip_ver=`pip3 -V`
if [ -z pip_ver ]
then 
        echo "PIP3 not installed. Please install the same and rerun this script!"
        echo "Exiting...!!!"
        exit 1
fi

printf "\n\nInstalling python pip, dev and virtual env packages.......\n\n"

sudo apt-get install python3-pip python3-dev python-virtualenv

sudo pip install -U pip

printf "\n\nCreating virtual env for tensorflow......\n\n"

mkdir tensorflow
virtualenv --system-site-packages -p python3 tensorflow/venv

printf "\n\nInstalling tensorflow......\n\n"

source tensorflow/venv/bin/activate

pip install -U pip

pip install -U tensorflow-gpu

printf "\n\nInstalling keras......\n\n"

pip install -U keras

tf_out=`python -c "import tensorflow as tf;print(tf.__version__)"`

keras_out=`python -c "import keras;print(keras.__version__)"`

printf "\n\nValidating tensorflow and keras......\n\n"

if [ -z "$tf_out" ] && [ -z "${keras_out}" ]
then 
	echo "Something went wrong!!! check the logs for details!!!"
else
	echo "Tensorflow ${tf_out} and keras ${keras_out} installed successfully!!!"  
fi
