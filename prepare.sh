#
set -x
set -e
cd test
GCC_VERSION=`gcc --version | head -1 | awk '{print $3}'`
tar xzf db-4.5.20.tar.gz
tar xzf file-5.09.tar.gz
tar xjf rpm-4.9.1.1.tar.bz2

if [ "$GCC_VERSION" > "4.6.0" ] ; then
    patch -p1 <../zypper_12_1.patch 
else
    (cd libzypp; patch -p1 <../../libzypp_11_4.patch)
    (cd sat-solver; patch -p1 <../../satsolver_11_4.patch)
    (cd zypper; patch -p1 <../../zypper_11_4.patch)
fi

cd rpm-4.9.1.1
patch -p1 <../../rpm_chroot.patch 
patch -p1 <../../rpm_rpmbuild.patch 
ln -s ../db-4.5.20 db
