firewall-cmd --list-all-zones
firewall-cmd --permanent --new-zone=mjm
firewall-cmd --reload
firewall-cmd --get-zones


firewall-cmd --zone=mjm --permanent --add-service=dhcpv6-client

firewall-cmd --zone=mjm --permanent --add-rich-rule='rule service name=http accept limit value=10/s'
firewall-cmd --zone=mjm --permanent --add-rich-rule='rule service name=https accept limit value=10/s'

firewall-cmd --zone=mjm --permanent --set-target=DROP

firewall-cmd --reload
# Archlinux
#firewall-cmd --zone=mjm --change-interface=enp1s0f0
# Rosa
#firewall-cmd --zone=mjm --change-interface=wlp1s0
firewall-cmd --zone=mjm --change-interface=eno1

firewall-cmd --set-default-zone=mjm

systemctl restart firewalld

firewall-cmd --get-active-zones
