#!/bin/bash

git add .
echo "add commit message"
read message
git commit -m "${message}"
git push origin main
