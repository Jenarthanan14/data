#
# Pre-install some packages in EMR for brq_time_series project
#
# Following instruction at https://stackoverflow.com/questions/31525012/how-to-bootstrap-installation-of-python-modules-on-amazon-emr
#
sudo update-alternatives  --set python /usr/bin/python3.6

sudo pip install -U requests
sudo pip install -U beautifulsoup4
sudo pip install -U lxml
sudo pip install -U html5lib
sudo pip install -U selenium
sudo pip install -U chromedriver
sudo pip install -U webdriver-manager
chmod 755 chromedriver

sudo pip install  -U pandas 
sudo pip install  -U s3fs  
sudo pip install  -U maxminddb-geolite2
sudo pip install  -U geohash2
sudo pip install  -U IPy
sudo pip install pygeohash

mkdir /home/hadoop/.m2/repository/Chrome_driver
sudo aws s3 cp s3://ada-dev/Jena/Chrome_driver/chromedriver /home/hadoop/.m2/repository/Chrome_driver


