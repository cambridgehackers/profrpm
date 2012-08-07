#
set -e
set -x
cd test/rpm-4.9.1.1
../../rpm_configure.sh
make
sudo make install
sudo cp db.h /opt/profbuild/include/rpm/
#needed by 11.4 verion of libzypp
tar cf - lib/rpmdb_internal.h lib/backend/dbi.h lib/rpmhash.H | (cd /opt/profbuild/include/rpm/; sudo tar xf -)

#cd ../libsolv
cd ../sat-solver
../../zmake.sh

cd ../libzypp
../../zmake.sh
#sudo cp cmake/modules/ZyppCommon.cmake /opt/profbuild/share/cmake/Modules/
#sudo cp cmake/modules/FindZypp.cmake /opt/profbuild/share/cmake/Modules/

cd ../zypper
../../zmake.sh
