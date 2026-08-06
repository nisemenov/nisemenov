#!/usr/bin/env bash
# Генерирует pdf/ артефакты из cv/*.md.
# Требует: pandoc, typst (brew install typst)
set -euo pipefail
cd "$(dirname "$0")"

for src in cv/*.md; do
  name=$(basename "$src" .md)
  pandoc "$src" --pdf-engine=typst \
    -V margin.top=2cm -V margin.bottom=2cm -V margin.left=2.2cm -V margin.right=2.2cm \
    -o "pdf/nisemenov-$name.pdf"
  echo "OK: pdf/nisemenov-$name.pdf"
done
