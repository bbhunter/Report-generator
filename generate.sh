#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "./generator.sh <INPUT.MD> <OUTPUT.PDF>"
fi

pandoc $1 -o $2 --from markdown+yaml_metadata_block+raw_html --template ./eisvogel.latex --table-of-contents --toc-depth 6 --number-sections --top-level-division=chapter --highlight-style ./breezedark.theme && atril $2
