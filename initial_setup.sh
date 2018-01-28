#!/bin/sh


WORKSPACE_DIR='/workspace'

VAGRANT_SHARED_DIR='/vagrant_shared'
VIVADO_TOOLCHAIN_INSTALLER_DIR=$VAGRANT_SHARED_DIR'/vivado_installer'
VIVADO_TOOLCHAIN_INSTALLATION_DIR="/opt/Xilinx"

sudo mkdir -p $WORKSPACE_DIR; # sudo chown vagrant:vagrant $WORKSPACE_DIR;
cd $WORKSPACE_DIR


if [ ! -d  $VIVADO_TOOLCHAIN_INSTALLER_DIR ] ; then
    echo "Extracting Xilinx Vivado Installer..."
    mkdir -p $VIVADO_TOOLCHAIN_INSTALLER_DIR
    tar -xvf /vagrant_shared/vivado_installer.tgz -C $VAGRANT_SHARED_DIR
fi

if [ ! -d  $VIVADO_TOOLCHAIN_INSTALLATION_DIR ] ; then
    echo "Installing Xilinx Vivado toolchain..."
    mkdir -p $VIVADO_TOOLCHAIN_INSTALLATION_DIR
    $VIVADO_TOOLCHAIN_INSTALLER_DIR/xsetup -b Install -a XilinxEULA,3rdPartyEULA,WebTalkTerms -c /vivado-toolchain/vivado-config.conf
fi

