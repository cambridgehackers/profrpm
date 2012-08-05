#
set -x
set -e
mkdir build
cd build
CFLAGS="-I/opt/profbuild/include" cmake -DCMAKE_INSTALL_PREFIX=/opt/profbuild/ -DCMAKE_PREFIX_PATH=/opt/profbuild/ -DCMAKE_INCLUDE_PATH=/opt/profbuild/ -DDISABLE_SHARED=1 -DCMAKE_VERBOSE_MAKEFILE=TRUE ..
make
sudo make install
