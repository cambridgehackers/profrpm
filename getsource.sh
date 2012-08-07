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

if [ "$GCC_VERSION" \> "4.6.0" ] ; then
    # c++ (GCC) 4.6.3 20120306 (Red Hat 4.6.3-2)
    VERSION=SuSE-Code-12_1-Branch
else
    # Ubuntu 10.04
    #c++ (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3
    VERSION=SuSE-Code-11_4-Branch
fi
git clone git://github.com/openSUSE/libzypp.git
(cd libzypp; git checkout BASE-$VERSION)
git clone git://github.com/openSUSE/zypper.git
(cd zypper; git checkout BASE-$VERSION)
if [ "$VERSION" = "SuSE-Code-12_1-Branch" ] ; then
git clone git://github.com/openSUSE/libsolv.git
(cd libsolv; git checkout BASE-$VERSION)
else
git clone https://github.com/openSUSE/sat-solver.git
(cd sat-solver; git checkout $VERSION)
#7e565d33c8ddc94afd5b3b84f42e340cf20345c7
#SuSE-Code-11_4-Branch
#SuSE-Code-12_2-Branch
fi
