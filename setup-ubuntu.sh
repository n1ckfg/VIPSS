NLOPT_VERSION="2.7.1"
NLOPT_FILENAME="v$NLOPT_VERSION.tar.gz"
NLOPT_URL="https://github.com/stevengj/nlopt/archive/$NLOPT_FILENAME"
NLOPT_DIRNAME="nlopt-$NLOPT_VERSION"

ARMADILLO_VERSION="11.2.3"
ARMADILLO_FILENAME="armadillo-$ARMADILLO_VERSION.tar.xz"
ARMADILLO_URL="http://sourceforge.net/projects/arma/files/$ARMADILLO_FILENAME"
ARMADILLO_DIRNAME="armadillo-$ARMADILLO_VERSION"

cd $PWD
rm -rf build
mkdir build
cd build

wget $NLOPT_URL
tar -xvf $NLOPT_FILENAME
cd $NLOPT_DIRNAME
cmake . && make && sudo make install

cd ..
wget $ARMADILLO_URL
tar -xvf $ARMADILLO_FILENAME
cd $ARMADILLO_DIRNAME
sudo apt-get install cmake libopenblas-dev liblapack-dev libarpack2-dev libsuperlu-dev
cmake . && make && sudo make install

cd ../../vipss
cmake . && make


