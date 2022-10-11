wget https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-4.14.111.tar.xz
tar xvf linux-4.14.111.tar.xz
cd linux-4.14.111
sudo cp -v /boot/config-$(uname -r) .config
sudo apt install build-essential dwarves python3 libncurses-dev flex bison libssl-dev bc libelf-dev
sudo make menuconfig 
sudo make bzImage
sudo make modules
sudo make modules_install
sudo make install
sudo update-grub
sudo reboot -i

git clone https://github.com/telekom/mp-dccp.git
