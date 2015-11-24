# CAFFE INSTALLATION: http://caffe.berkeleyvision.org/installation.html

# Keep Ubuntu or Debian up to date
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove

# DEPENDENCIES
sudo apt-get install -y libopenblas-dev
sudo apt-get install -y libboost-all-dev
sudo apt-get install -y libprotobuf-dev protobuf-compiler
sudo apt-get install -y libgoogle-glog-dev
sudo apt-get install -y libgflags-dev
sudo apt-get install -y libhdf5-dev

# OPTIONAL DEPENDENCIES
# Install OpenCV (http://milq.github.io/install-opencv-ubuntu-debian).
sudo apt-get install -y liblmdb-dev
sudo apt-get install -y libleveldb-dev
sudo apt-get install -y libsnappy-dev

# INTERFACES (Python 3)
sudo apt-get install -y python3-dev python3-numpy libboost-python-dev

# CLONING AND COMPILING
git clone https://github.com/BVLC/caffe.git
cd caffe

# In 'caffe/CMakeLists.txt' set 'python_version' to "3".
# In 'caffe/cmake/Dependencies.cmake' set BLAS to "Open" or set '-DBLAS=Open' in 'cmake'.
# In 'caffe/cmake/Dependencies.cmake' add 'set(Python_ADDITIONAL_VERSIONS 3.4)'
# before 'find_package(PythonLibs 3.0). URL: http://askubuntu.com/questions/479260/cmake-can-not-find-pythonlibs.

# mkdir build
# cd build
# cmake -DBLAS=Open -DCPU_ONLY=ON -DUSE_CUDNN=OFF ..
# make -j8
# make install

# 'CV_BGR2GRAY' errors In 'caffe/examples/cpp_classification/'
# 'It seems, you are (accidentally) using the OpenCV 3.0(master) opencv branch.
# A lot of constants have changed there, like most of the CV_ prefixes were changed to
# cv:: namespace, CV_BGR2GRAY is now cv::COLOR_BGR2GRAY, etc.
# TODO: Go to 'caffe/examples/cpp_classification/classification.cpp' and fix the errors.
# URL: http://stackoverflow.com/questions/23922620/open-cv-not-loading-correctly.
