#!/bin/bash
wget https://github.com/glotlabs/gdrive/releases/download/3.9.1/gdrive_linux-x64.tar.gz
tar -xvf gdrive_linux-x64.tar.gz
mv gdrive /usr/local/bin/.
gdrive about
gdrive file upload abc.txt

