#
set -x
set -e
cd test
tar xzf db-4.5.20.tar.gz
tar xzf file-5.09.tar.gz
tar xjf rpm-4.9.1.1.tar.bz2

(cd libsolv; patch -p1 <../../libsolv_12_1.patch)
(cd libzypp; patch -p1 <../../libzypp_12_1.patch)
(cd zypper; patch -p1 <../../zypper_12_1.patch)

#remove c11 extensions so that gcc4.4 can be used (for Ubuntu 10.04)
(cd libzypp; patch -p1 <../../libzypp_12_1_no_c11.patch)
(cd zypper; patch -p1 <../../zypper_12_1_no_c11.patch)

cd rpm-4.9.1.1
patch -p1 <../../rpm_chroot.patch 
patch -p1 <../../rpm_rpmbuild.patch 
ln -s ../db-4.5.20 db
