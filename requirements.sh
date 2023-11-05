#!/bin/bash
sudo apt install texlive-latex-recommended texlive-fonts-extra texlive-latex-extra p7zip-full texlive-xetex -y
sudo apt-get install texlive-lang-spanish # Choose your language
sudo apt install poppler-utils -y
wget https://github.com/jgm/pandoc/releases/download/2.9.2.1/pandoc-2.9.2.1-1-amd64.deb
sudo apt install -y -f ./pandoc-2.9.2.1-1-amd64.deb
pip install pandoc-latex-environment
