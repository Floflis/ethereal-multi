#!/bin/bash
# load definitions & settings
. /usr/lib/floflis/./config

#      if [ "$flofarch" = "386" ]; then
#         tar -xzf include/IPFS/go-ipfs_v0.4.22_linux-386.tar.gz
#         rm -f go-ipfs/install.sh && rm -f go-ipfs/LICENSE && rm -f go-ipfs/README.md
#         $maysudo mv go-ipfs/ipfs /usr/bin
#         $maysudo rm -rf go-ipfs
#         chmod +x /usr/bin/ipfs
#         echo "Testing if IPFS works:"
#         ipfs
#fi
      if [ "$flofarch" = "amd64" ]; then
         echo "Installing ethereal..."
         tar -xzf include/ethereal/ethereal-2.8.7-linux-amd64.tar.gz
         $maysudo mv ethereal /usr/bin
         chmod +x /usr/bin/ethereal
         echo "Testing if ethereal works:"
         ethereal
fi

#      if [ "$flofarch" = "386" ]; then
#         tar -xzf include/IPFS/go-ipfs_v0.4.22_linux-386.tar.gz
#         rm -f go-ipfs/install.sh && rm -f go-ipfs/LICENSE && rm -f go-ipfs/README.md
#         $maysudo mv go-ipfs/ipfs /usr/bin
#         $maysudo rm -rf go-ipfs
#         chmod +x /usr/bin/ipfs
#         echo "Testing if IPFS works:"
#         ipfs
#fi
      if [ "$flofarch" = "amd64" ]; then
         echo "Installing ethereal-starknet..."
         tar -xzf include/ethereal-starknet/ethereal-starknet-0.1.2-linux-amd64.tar.gz
         $maysudo mv probe /usr/bin/ethereal-starknet
         chmod +x /usr/bin/ethereal-starknet
         echo "Testing if ethereal-starknet works:"
         ethereal-starknet
fi
