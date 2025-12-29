#!/bin/bash

# Setup script for AI-online-chat-logs-as-data-logs repository
# Author: Gary W. Floyd
# Date: December 28, 2025

set -e  # Exit on error

echo "========================================"
echo "AI Chat Logs Repository Setup"
echo "========================================"
echo ""

# Define paths
REPO_NAME="AI-online-chat-logs-as-data-logs"
REPO_DIR="$HOME/$REPO_NAME"
SOURCE_DIR="/mnt/user-data/outputs"

# Check if repository already exists
if [ -d "$REPO_DIR" ]; then
    echo "WARNING: Repository directory already exists at $REPO_DIR"
    read -p "Do you want to remove it and start fresh? (y/N) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rm -rf "$REPO_DIR"
        echo "Removed existing directory."
    else
        echo "Aborting. Please backup or move the existing directory first."
        exit 1
    fi
fi

echo "Creating directory structure..."

# Create main directory
mkdir -p "$REPO_DIR"

# Create data directories
mkdir -p "$REPO_DIR/data/raw/chatgpt"
mkdir -p "$REPO_DIR/data/raw/claude"
mkdir -p "$REPO_DIR/data/raw/other"
mkdir -p "$REPO_DIR/data/processed/metrics"
mkdir -p "$REPO_DIR/data/processed/annotated"

# Create analysis directories
mkdir -p "$REPO_DIR/analysis/scripts"
mkdir -p "$REPO_DIR/analysis/figures"

# Create papers directory
mkdir -p "$REPO_DIR/papers/published"

# Create experiments directories
mkdir -p "$REPO_DIR/experiments/protocols"
mkdir -p "$REPO_DIR/experiments/results"

echo "Copying files..."

# Copy main documentation files
cp /home/claude/README.md "$REPO_DIR/"
cp /home/claude/LICENSE "$REPO_DIR/"
cp /home/claude/.gitignore "$REPO_DIR/"

# Copy analysis papers
cp "$SOURCE_DIR/guardrail_failure_analysis.md" "$REPO_DIR/analysis/"
cp "$SOURCE_DIR/technical_appendix_metrics.md" "$REPO_DIR/analysis/"

# Copy Python script
cp /home/claude/calculate_hmi.py "$REPO_DIR/analysis/scripts/"
chmod +x "$REPO_DIR/analysis/scripts/calculate_hmi.py"

# Create placeholder .gitkeep files
touch "$REPO_DIR/data/raw/chatgpt/.gitkeep"
touch "$REPO_DIR/data/raw/claude/.gitkeep"
touch "$REPO_DIR/data/raw/other/.gitkeep"
touch "$REPO_DIR/data/processed/metrics/.gitkeep"
touch "$REPO_DIR/data/processed/annotated/.gitkeep"
touch "$REPO_DIR/analysis/figures/.gitkeep"
touch "$REPO_DIR/papers/published/.gitkeep"
touch "$REPO_DIR/experiments/protocols/.gitkeep"
touch "$REPO_DIR/experiments/results/.gitkeep"

# Create a quick reference guide
cat > "$REPO_DIR/QUICK_START.md" << 'EOF'
# Quick Start Guide

## Initial Setup (Just Created)

Your repository is now ready at: `~/AI-online-chat-logs-as-data-logs/`

## Next Steps

### 1. Initialize Git Repository

```bash
cd ~/AI-online-chat-logs-as-data-logs
git init
git add .
git commit -m "Initial commit: Guardrail failure analysis framework"
```

### 2. Connect to GitHub

```bash
git remote add origin https://github.com/darkt22002/AI-online-chat-logs-as-data-logs.git
git branch -M main
git push -u origin main
```

### 3. Add Your Chat Logs

Place your conversation logs in:
- `data/raw/chatgpt/` - For ChatGPT conversations
- `data/raw/claude/` - For Claude conversations
- `data/raw/other/` - For other AI systems

### 4. Calculate HMI for a Conversation

```bash
cd analysis/scripts
./calculate_hmi.py \
    --ttr 0.5 \
    --cfs 2.1 \
    --ifd 0.79 \
    --aaf 31.3 \
    --pmr inf \
    --efr 2.5 \
    --cci 15
```

## File Organization

- **README.md** - Main repository documentation
- **LICENSE** - MIT license for code
- **analysis/** - Papers and analysis tools
- **data/raw/** - Original conversation logs
- **data/processed/** - Analyzed data
- **experiments/** - Test protocols and results
- **papers/published/** - Published academic work

## Tips

- Keep raw logs in `data/raw/` organized by platform
- Name files with dates: `YYYY-MM-DD-description.md`
- Update metrics in `data/processed/metrics/` after analysis
- Add visualizations to `analysis/figures/`

## Publishing

Before pushing sensitive conversations, review for:
- Third-party names (redact if needed)
- Private information
- Confidential business data

Everything else is fair game under one-party consent.
EOF

echo ""
echo "========================================"
echo "Setup Complete!"
echo "========================================"
echo ""
echo "Repository created at: $REPO_DIR"
echo ""
echo "Directory structure:"
tree -L 2 "$REPO_DIR" 2>/dev/null || ls -R "$REPO_DIR"
echo ""
echo "Next steps:"
echo "1. cd $REPO_DIR"
echo "2. Review QUICK_START.md for instructions"
echo "3. Initialize git and push to GitHub"
echo ""
echo "Files ready to commit:"
echo "  - README.md"
echo "  - LICENSE"
echo "  - .gitignore"
echo "  - analysis/guardrail_failure_analysis.md"
echo "  - analysis/technical_appendix_metrics.md"
echo "  - analysis/scripts/calculate_hmi.py"
echo ""
echo "Happy researching!"
