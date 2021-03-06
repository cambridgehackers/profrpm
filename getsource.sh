#
set -e
set -x
GCC_VERSION=`gcc --version | head -1 | sed -e "s/.* //"`
[ -e test ] || mkdir test
cd test
wget http://rpm.org/releases/rpm-4.9.x/rpm-4.9.1.1.tar.bz2
wget ftp://ftp.astron.com/pub/file/file-5.09.tar.gz
wget http://download.oracle.com/berkeley-db/db-4.5.20.tar.gz
md5sum *
# b0f1c777708cb8e9d37fb47e7ed3312d  db-4.5.20.tar.gz
# 6fd7cd6c4281e68fe9ec6644ce0fac6f  file-5.09.tar.gz
# de64e7410721aa8e377adb8430cfc9e2  rpm-4.9.1.1.tar.bz2

# c++ (GCC) 4.6.3 20120306 (Red Hat 4.6.3-2)
VERSION=SuSE-Code-12_1-Branch
git clone git://github.com/openSUSE/libzypp.git
(cd libzypp; git checkout BASE-$VERSION)
git clone git://github.com/openSUSE/zypper.git
(cd zypper; git checkout BASE-$VERSION)
git clone git://github.com/openSUSE/libsolv.git
(cd libsolv; git checkout BASE-$VERSION)
