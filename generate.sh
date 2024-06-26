#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "./generator.sh <INPUT.MD> <OUTPUT.PDF>"
    exit 1
fi

pandoc $1 -o $2 --from markdown+yaml_metadata_block+raw_html --template ./Assets/eisvogel.latex --table-of-contents --toc-depth 6 --number-sections --top-level-division=chapter --highlight-style ./Assets/breezedark.theme && atril $2
