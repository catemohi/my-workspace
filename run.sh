#!/bin/bash
sudo apt install python3 python3-pip python3-venv git -y
python3 -m venv ../.env
source ../.env/bin/activate
python3 -m pip install -r requirements.txt
cp -r ./.vscode ../.vscode
cp ./setup.cfg ../setup.cfg
cp ./gitignore ../.gitignore
cp ./_main.py ../main.py
mypy ../.
cp -a ./.mypy_cache ../.mypy_cache
rm -rf ./.mypy_cache
cd ..
git init
git add .gitignore
git commit -m "Initial commit"