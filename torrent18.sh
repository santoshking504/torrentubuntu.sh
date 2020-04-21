sudo apt update
sudo apt install nginx -y
wget http://download.ap.bittorrent.com/track/beta/endpoint/utserver/os/linux-x64-ubuntu-13-04 -O utserver.tar.gz -y
sudo tar xvf utserver.tar.gz -C /opt/
sudo apt install libssl1.0.0 libssl-dev -y
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb -y
sudo apt install ./libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb -y
sudo ln -s /opt/utorrent-server-alpha-v3_3/utserver /usr/bin/utserver
utserver -settingspath /opt/utorrent-server-alpha-v3_3/ -daemon
sudo ufw allow 8080/tcp -y
sudo ufw allow 6881/tcp -y
