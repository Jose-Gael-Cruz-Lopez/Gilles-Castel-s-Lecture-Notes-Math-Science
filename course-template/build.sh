#!/bin/bash
# build.sh — compile master.tex to PDF
# This script finds pdflatex automatically on macOS, Linux, and Windows (Git Bash).
# LaTeX Workshop in VS Code calls this instead of pdflatex directly,
# which solves the "spawn pdflatex ENOENT" error on macOS.

# Add common LaTeX install locations to PATH
export PATH="/Library/TeX/texbin:/usr/local/texlive/2024/bin/universal-darwin:/usr/local/texlive/2025/bin/universal-darwin:/usr/local/bin:/usr/bin:/bin:$PATH"

# Find the directory this script is in (course-template/)
DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

# Compile twice (for TOC and cross-references)
pdflatex -interaction=nonstopmode -shell-escape master.tex
pdflatex -interaction=nonstopmode -shell-escape master.tex
