#!/bin/bash

python3 -Bc "import pathlib; import shutil; [shutil.rmtree(p) for p in pathlib.Path('.').rglob('__pycache__')]"

venv/bin/python3 -m gunicorn --bind 0.0.0.0:31145 main:app
