cd ~

sudo apt-get update

sudo apt-get dist-upgrade

sudo apt-get install git

sudo apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev mysql-server

git clone git://github.com/litecoin-project/litecoin.git

cd litecoin/src

make -f makefile.unix USE_UPNP=-

sudo cp litecoind /usr/bin

cd ~

git clone git://github.com/xrobau/litecoin-testnet-box.git

cd litecoin-testnet-box

cd ~

sudo apt-get install python-twisted python-mysqldb python-dev python-setuptools python-memcache python-simplejson

easy_install -U distribute

git clone https://github.com/Tydus/litecoin_scrypt.git

git clone https://github.com/ahmedbodi/stratum-mining.git

git clone https://github.com/ahmedbodi/stratum.git

cd stratum-mining

git submodule init

git submodule update

cd externals/litecoin_scrypt

sudo python setup.py install

cd ~

cd stratum-mining/externals/stratum

sudo python setup.py install

cd ~

cp stratum-mining/conf/config_sample.py stratum-mining/conf/config.py

sudo apt-get install memcached php5-memcached php5-mysqlnd php5-curl

sudo apache2ctl -k stop; sleep 2; sudo apache2ctl -k start

cd ..

cd ..

cd var/www

sudo git clone git://github.com/MPOS/php-mpos.git MPOS

cd MPOS

sudo git checkout master

mysql -u -p -e "create database mpos"

mysql -u -p mpos < sql/000_base_structure.sql

sudo chown -R www-data templates/compile templates/cache

sudo cp include/config/global.inc.dist.php include/config/global.inc.php
