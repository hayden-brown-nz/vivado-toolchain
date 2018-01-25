#!/bin/sh
sudo mkdir -p /workspace; cd /workspace
/vagrant_shared/Xilinx_Vivado_SDK_Web_2017.4_1216_1_Lin64.bin --target vivado --noexec
sudo vivado/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --edition "Vivado HL WebPACK" --location 
"/opt/xilinx"
