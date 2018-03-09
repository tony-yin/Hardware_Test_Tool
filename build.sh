#! /bin/bash

lspci_path=/usr/bin/
lsblk_path=/bin/
lsscsi_path=/usr/bin/
megacli_path=/opt/MegaRAID/MegaCli/

function tool_install() {
    # lspci
    if [ -f $lspci_path"lspci" ]; then
        mv $lspci_path"lspci" $lspci_path"lspci.bak"
        cp lspci/* $lspci_path
        echo "=== lspci install successfully ==="
    else
        echo "File "$lspci_path"lspci does not exist."
    fi
    
    # lsblk
    if [ -f $lsblk_path"lsblk" ]; then
        mv $lsblk_path"lsblk" $lsblk_path"lsblk.bak"
        cp lsblk/* $lsblk_path
        echo "=== lsblk install successfully ==="
    else
        echo "File "$lsblk_path"lsblk does not exist."
    fi
    
    # lsscsi
    if [ -f $lsscsi_path"lsscsi" ]; then
        mv $lsscsi_path"lsscsi" $lsscsi_path"lsscsi.bak"
        cp lsscsi/* $lsscsi_path
        echo "=== lsscsi install successfully ==="
    else
        echo "File "$lsscsi_path"lsscsi does not exist."
    fi
    
    # megacli
    if [ -f $megacli_path"MegaCli64" ]; then
        mv $megacli_path"MegaCli64" $megacli_path"MegaCli64.bak"
        cp megacli/* $megacli_path
        echo "=== megacli install successfully ==="
    else
        echo "File "$megacli_path"MegaCli64 does not exist."
    fi
}

function tool_uninstall() {
    # lspci
    if [ -f $lspci_path"lspci.bak" ]; then
        rm -rf $lspci_path"lspci" $lspci_path"lspci"*".txt"
        mv $lspci_path"lspci.bak" $lspci_path"lspci"
        echo "=== lspci uninstall successfully ==="
    else
        echo "File "$lspci_path"lspci.bak does not exist."
    fi
    
    # lsblk
    if [ -f $lsblk_path"lsblk" ]; then
        rm -rf $lsblk_path"lsblk" $lsblk_path"lsblk"*".txt"
        mv $lsblk_path"lsblk.bak" $lsblk_path"lsblk"
        echo "=== lsblk uninstall successfully ==="
    else
        echo "File "$lsblk_path"lsblk.bak does not exist."
    fi
    
    # lsscsi
    if [ -f $lsscsi_path"lsscsi" ]; then
        rm -rf $lsscsi_path"lsscsi" $lsscsi_path"lsscsi"*".txt"
        mv $lsscsi_path"lsscsi.bak" $lsscsi_path"lsscsi"
        echo "=== lsscsi uninstall successfully ==="
    else
        echo "File "$lsscsi_path"lsscsi.bak does not exist."
    fi
    
    # megacli
    if [ -f $megacli_path"MegaCli64" ]; then
        rm -rf $megacli_path"MegaCli64" $megacli_path"mega"*".txt"
        mv $megacli_path"MegaCli64.bak" $megacli_path"MegaCli64"
        echo "=== megacli uninstall successfully ==="
    else
        echo "File "$megacli_path"MegaCli64.bak does not exist."
    fi

}

op=$1
if [ "$op" = "install" ]; then
    tool_install
elif [ "$op" = "uninstall" ]; then
    tool_uninstall
else
    echo "Invalid operation."
fi
