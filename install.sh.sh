#!/bin/bash
rm -f install.sh && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt update && apt install -y bzip2 gzip coreutils screen curl unzip && wget https://raw.githubusercontent.com/Rolka111111/scripts/main/install.sh && chmod +x install.sh && sed -i -e 's/\r$//' install.sh && screen -S setup ./install.sh

