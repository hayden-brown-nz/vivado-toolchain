#!/bin/sh
sudo mkdir -p /workspace; cd /workspace

sudo mkdir /opt/Xilinx
echo "Extracting Xilinx Vivado Installer..."
/vagrant_shared/Xilinx_Vivado_SDK_Web_2017.4_1216_1_Lin64.bin --target vivado --noexec > /dev/null

echo "Installing toolchain..."
sudo vivado/xsetup -b Install -a XilinxEULA,3rdPartyEULA,WebTalkTerms -c /vivado-toolchain/vivado-config.conf
