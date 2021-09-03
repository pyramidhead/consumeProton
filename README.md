# consumeProton
this will load a free VPN connection on the host you execute it on.
you will need to sign up for a free protonVPN account first and edit in your credentials.
validate that you're originating from the VPN server with "curl ifconfig.me".
by design, this script selects a random server. if you wish to select a specific server, the list can be found here: https://protonvpn.com/vpn-servers and that can be added to the expect clause.
