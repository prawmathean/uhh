#!/bin/bash
set -e

echo "==> Installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "==> Starting Ollama service..."
sudo systemctl enable --now ollama

# Give it a sec to start
sleep 3

echo "==> Pulling qwen2.5-coder:7b (~4.7GB, grab a coffee)..."
ollama pull qwen2.5-coder:7b

echo "==> Done! Running the model..."
ollama run qwen2.5-coder:7b
