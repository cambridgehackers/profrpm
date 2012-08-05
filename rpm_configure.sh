#/bin/bash

#SSLDFLAGS="-L/usr/lib/nss /usr/lib/liblzma.so.2" 
#LDFLAGS="-L/usr/lib/nss " \

CPPFLAGS="$CPPFLAGS -I/usr/include/nss3 -I/usr/include/nspr4" \
./configure --disable-dependency-tracking --disable-libtool-lock \
    --disable-nls --disable-rpath --disable-plugins \
    --without-libiconv-prefix --without-libintl-prefix --without-lua \
    --program-prefix=prof- --prefix /opt/profbuild --enable-static --disable-shared


#cp zz/rpm-4.9.1.1/db.h /opt/profbuild/include/rpm/

# git clone git://github.com/openSUSE/libsolv.git
# git checkout BASE-SuSE-Code-12_1-Branch
# mkdir build; cd build
#oldCFLAGS="-I/opt/profbuild/include" cmake -DCMAKE_INSTALL_PREFIX=/opt/profbuild/ -DCMAKE_PREFIX_PATH=/opt/profbuild/ -DCMAKE_INCLUDE_PATH=/opt/profbuild/ -DDISABLE_SHARED=1 ..
#CFLAGS="-I/opt/profbuild/include" cmake -DCMAKE_INSTALL_PREFIX=/opt/profbuild/ -DCMAKE_PREFIX_PATH=/opt/profbuild/ -DCMAKE_INCLUDE_PATH=/opt/profbuild/ -DDISABLE_SHARED=1 -DCMAKE_VERBOSE_MAKEFILE=TRUE ..
#
# git clone git://github.com/openSUSE/libzypp.git
# git checkout BASE-SuSE-Code-12_1-Branch
# git clone git://github.com/openSUSE/zypper.git
# git checkout BASE-SuSE-Code-12_1-Branch

#  -DBUILD_SHARED_LIBS=OFF

