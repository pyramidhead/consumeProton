# messWithTexas.sh yippie ki yay mothafuckas
# suggest running this from your user homedir

sudo mkdir messWithTexas

# enable free vpn to spoof tx ip
## install protonvpn cli
sudo mkdir vpn
sudo apt-get install -y dpkg-dev
sudo apt-get install -y apt-file
sudo apt-get install -y expect
sudo apt-get install -y send
sudo apt-file update
sudo apt-get update
sudo wget -O ~/vpn/protonVpn.deb https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb
sudo chmod 755 ~/vpn/protonVpn.deb
sudo apt-file find ~vpn/protonVpn.deb
sudo dpkg -i ~vpn/protonVpn.deb
sudo apt-get install -y ~/vpn/protonVpn.deb
sudo apt-get update
sudo apt-get install -y protonvpn-cli
## authenticate with free credentials
protonvpn-cli login messWithTexas
expect "Enter your ProtonVPN password:"
send "3N75Zw!UyRd7@7z"

# generate addresses at https://coolgenerator.com/address-generator (is this necessary? the next step generates names and addresses)

# parse names from https://www.fakenamegenerator.com/gen-random-us-us.php

# generate emails from https://www.throwawaymail.com/en

# http post to prolifewhistleblower.com (need a randomized interval between 5-30min here)
