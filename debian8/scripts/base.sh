export DEBIAN_FRONTEND=noninteractive
apt-get update
apt-get -y install linux-headers-$(uname -r) build-essential dkms perl

sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -e 's/%sudo  ALL=(ALL:ALL) ALL/%sudo  ALL=NOPASSWD:ALL/g' /etc/sudoers

echo "UseDNS no" >> /etc/ssh/sshd_config
