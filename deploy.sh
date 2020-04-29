#!/bin/bash

cd public 
git pull origin master
cd ..
hugo 
git submodule update
cd public
git add . 
git commit -m "rebuild site $(date '+%Y-%m-%d %H:%M:%S')"
git push origin HEAD:master