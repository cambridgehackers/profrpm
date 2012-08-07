#
set -e
set -x
cd test/rpm-4.9.1.1
../../rpm_configure.sh
make
sudo make install
sudo cp db.h /opt/profbuild/include/rpm/

if [ "$GCC_VERSION" >= "4.6.0" ] ; then
    cd ../libsolv
    ../../zmake.sh
else
    #needed by 11.4 verion of libzypp
    tar cf - lib/rpmdb_internal.h lib/backend/dbi.h lib/rpmhash.H | (cd /opt/profbuild/include/rpm/; sudo tar xf -)
    cd ../sat-solver
    ../../zmake.sh
fi

cd ../libzypp
../../zmake.sh

cd ../zypper
../../zmake.sh
