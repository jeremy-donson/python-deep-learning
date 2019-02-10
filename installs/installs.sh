#!/bin/bash

brew install python3

pip3 freeze | cut -d '=' -f1 > pip3-freezes.txt

grep pip3-freezes.txt github  # pyproj, neo4j, etc: -e git+https://github.com/jswhit/pyproj.git@78540f5ff40da92160f80860416c91ee74b7643c#egg

grep -v pip3-freezes.txt github

pip3 install --upgrade -r  pip3-freezes.txt

pip3 install keras tensorflow pandas jupyter bokeh



