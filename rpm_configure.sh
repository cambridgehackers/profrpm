#/bin/bash

CPPFLAGS="$CPPFLAGS -I/usr/include/nss3 -I/usr/include/nspr4 -I/usr/include/nss -I/usr/include/nspr" \
./configure --disable-dependency-tracking --disable-libtool-lock \
    --disable-nls --disable-rpath --disable-plugins \
    --without-libiconv-prefix --without-libintl-prefix --without-lua \
    --program-prefix=prof- --prefix /opt/profbuild --enable-static --disable-shared
