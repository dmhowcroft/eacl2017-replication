#!/usr/bin/env bash

# This script assumes that you are running bash as your shell
# and that you have the following installed:
#
#     wget
#     git
#     python (2 or 3)

# Create the directory to store the data
mkdir -p corpora/originals

# Download both corpora
if [ ! -f corpora/originals/aligned-good-0.67.txt ] || [ $(stat -c%s corpora/originals/aligned-good-0.67.txt) -ne 41649849 ]
then
    echo "Downloading ESEW corpus..."
    rm -f corpora/originals/aligned-good-0.67.txt
    wget -P corpora/originals http://ssli.ee.washington.edu/tial/projects/simplification/aligned-good-0.67.txt
else
    echo "ESEW corpus already downloaded to corpora/originals/aligned-good-0.67.txt"
fi
if [ ! -f corpora/originals/OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt ] || [ $(stat -c%s corpora/originals/OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt) -ne 713812 ]
then
    echo "Downloading OSE corpus..."
    rm -f OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt
    wget -P corpora/originals https://bitbucket.org/nishkalavallabhi/complexity-features/raw/3cf60342c7ec82371ea2d0ef1bb290e7b0c9bac2/corpus/OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt
else
    echo "OSE corpus already downloaded to OSE-SentenceAlignedCorpus-ThreeLevel-2013toMid2015-FINAL.txt"
fi


echo "Updating (or cloning) repos..."

if [ -d modelblocks-release ]
then 
    cd modelblocks-release
    git pull -v
    cd - > /dev/null
    echo ""
else 
    git clone https://github.com/modelblocks/modelblocks-release.git
fi
if [ -d idd3 ]
then 
    cd idd3
    git pull -v
    cd - > /dev/null
    echo ""
else 
    git clone https://github.com/dmhowcroft/idd3.git
fi
if [ -d icy-parses ]
then 
    cd icy-parses
    git pull -v
    cd - > /dev/null
    echo ""
else 
    git clone https://github.com/dmhowcroft/icy-parses.git
fi
