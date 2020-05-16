{
networking = {

nameservers = [ "192.168.1.1" ];

networkmanager.enable = true;

hostName = "val";


# Open ports in the firewall.

firewall.allowedTCPPortRanges = [
# kdeconnect
#  { from = 1714; to = 1764; }
];

firewall.allowedUDPPortRanges = [
# kdeconnect
#  { from = 1714; to = 1764; }
];


# Or disable the firewall altogether.
# networking.firewall.enable = false;

};
}
