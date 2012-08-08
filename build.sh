#
set -e
set -x
cd test/rpm-4.9.1.1
../../rpm_configure.sh
make
sudo make install
sudo cp db.h /opt/profbuild/include/rpm/

cd ../libsolv
../../zmake.sh

cd ../libzypp
../../zmake.sh

cd ../zypper
../../zmake.sh
