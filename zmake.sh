#
set -x
set -e
[ -e build ] || mkdir build
cd build
TARGET_DIR=/opt/profbuild
LDFLAGS="-L$TARGET_DIR/lib64 -L$TARGET_DIR/lib" \
CFLAGS="-I$TARGET_DIR/include" cmake \
    cmake -DCMAKE_INSTALL_PREFIX=$TARGET_DIR/ -DCMAKE_PREFIX_PATH=$TARGET_DIR/ -DCMAKE_INCLUDE_PATH=$TARGET_DIR/ \
    -DDISABLE_SHARED=1 -DCMAKE_VERBOSE_MAKEFILE=TRUE -DZYPP_PREFIX=$TARGET_DIR ..
make
sudo make install

