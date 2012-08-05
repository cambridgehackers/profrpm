#
cd test
tar xzf db-4.5.20.tar.gz
tar xzf file-5.09.tar.gz
tar xjf rpm-4.9.1.1.tar.bz2

patch -p1 <../zypper.patch 

cd rpm-4.9.1.1
patch -p1 <../../rpm_chroot.patch 
patch -p1 <../../rpm_rpmbuild.patch 
ln -s ../db-4.5.20 db
