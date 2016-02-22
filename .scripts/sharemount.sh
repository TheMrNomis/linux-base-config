#!/bin/bash

echo "=====mount /share====="
sshfs 13003313@cassius.istic.univ-rennes1.fr:/share /share
cd /share
/bin/bash
cd ~
echo "====unmount /share===="
fusermount -u /share
