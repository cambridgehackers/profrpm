#
[ -e test ] || mkdir test
cd test
wget http://rpm.org/releases/rpm-4.9.x/rpm-4.9.1.1.tar.bz2
wget ftp://ftp.astron.com/pub/file/file-5.09.tar.gz
wget http://download.oracle.com/berkeley-db/db-4.5.20.tar.gz
md5sum *
# b0f1c777708cb8e9d37fb47e7ed3312d  db-4.5.20.tar.gz
# 6fd7cd6c4281e68fe9ec6644ce0fac6f  file-5.09.tar.gz
# de64e7410721aa8e377adb8430cfc9e2  rpm-4.9.1.1.tar.bz2
git clone git://github.com/openSUSE/libsolv.git
(cd libsolv; git checkout BASE-SuSE-Code-12_1-Branch)
#BASE-SuSE-Code-11_4-Branch
git clone git://github.com/openSUSE/libzypp.git
(cd libzypp; git checkout BASE-SuSE-Code-12_1-Branch)
git clone git://github.com/openSUSE/zypper.git
(cd zypper; git checkout BASE-SuSE-Code-12_1-Branch)


#git clone https://github.com/openSUSE/sat-solver.git
#7e565d33c8ddc94afd5b3b84f42e340cf20345c7
#SuSE-Code-11_4-Branch
#SuSE-Code-12_2-Branch
