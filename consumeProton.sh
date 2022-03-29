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
sudo apt-get install -y protonvpn-cli
## authenticate with free credentials
/usr/bin/expect << AUTH
protonvpn-cli login <yourLoginHere>
expect "Enter your ProtonVPN password:"
send "<yourPasswordHere>"
expect EOF
AUTH
protonvpn-cli status
