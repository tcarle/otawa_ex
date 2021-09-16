#!/bin/bash


mkdir OTAWA;
mkdir OTAWA/src;

# Install dependencies
sudo apt-get -y install g++ ocaml flex bison libxml2-dev libxslt1-dev cmake git graphviz python-gi python-gi-cairo python3-gi python3-gi-cairo gir1.2-gtk-3.0;

# Install OTAWA with sources
python otawa-install.py -B OTAWA/src;

# Install basic modules
cd OTAWA/bin;
# ILP solver
python otawa-install.py otawa-lp_solve5;
# arm ISA + NXP lpc2138 microarchitecture
python otawa-install.py otawa-arm otawa-lpc2138;
