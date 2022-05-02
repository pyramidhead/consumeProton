# enable free vpn
## install protonvpn cli
sudo apt-get install -y dpkg-dev
sudo apt-get install -y apt-file
sudo apt-get install -y expect
sudo apt-get install -y mmh
sudo apt-get install -y nmh
sudo apt-get install -y mailutils-mh
sudo apt-file update
sudo apt-get update
wget -O ~/git/consumeProton/protonVpn.deb https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb
sudo chmod 755 ~/git/consumeProton/protonVpn.deb
sudo apt-get install -y ~/git/consumeProton/protonVpn.deb
sudo apt-file update
sudo apt-get update
sudo apt-get install -y protonvpn-cli
sleep 15
## authenticate with free credentials
/usr/bin/expect << AUTH
protonvpn-cli login <yourLoginHere>
sleep 15
expect "Enter your ProtonVPN password:"
sleep 15
send "<yourPasswordHere>"
sleep 15
expect EOF
sleep 15
AUTH
protonvpn-cli status
protonvpn-cli c --fastest --protocol tcp
sleep 5
protonvpn-cli status
curl ifconfig.me
