#!/bin/bash

if ! command -v uv &> /dev/null; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
    export PATH="$HOME/.cargo/bin:$PATH"
fi

uv venv .venv --python 3.10
source .venv/bin/activate
uv pip install -r requirements.txt