#!/usr/bin/env bash
set -e

# Ensure build directory exists
mkdir -p build

# Define version and date
VERSION=$(cat VERSION || echo "dev")
DATE=$(date -I)
COPYRIGHT="本书以 Creative Commons CC BY-NC-SA 4.0（署名-非商业性使用-相同方式共享）许可发布；详见仓库中的 LICENSE。"

echo "Starting PDF generation with Tectonic..."
echo "Version: ${VERSION}"
echo "Date: ${DATE}"

# Detect OS and select fonts
if [[ "$(uname)" == "Darwin" ]]; then
  # macOS defaults
  MAINFONT="Times New Roman"
  CJKMAINFONT="Songti SC"
  MONOFONT="Menlo"
  # Unset MATHFONT to let template default to Latin Modern Math (Tectonic bundle)
  MATHFONT="" 
  echo "🍎 macOS detected: Using '${MAINFONT}', '${CJKMAINFONT}', '${MONOFONT}' (Math: bundle default)"
else
  # Linux/CI defaults
  MAINFONT="Noto Serif"
  CJKMAINFONT="Noto Serif CJK SC"
  MONOFONT="Latin Modern Mono"
  MATHFONT="Latin Modern Math"
fi

# Use pipefail to catch errors in the pipeline
set -o pipefail

# Run Pandoc with Tectonic engine
# Tectonic will automatically download missing LaTeX packages (cached in ~/.cache/tectonic)
pandoc build/book.md -o build/Orthogonal-Governance.pdf \
  --pdf-engine=tectonic \
  --template templates/book.tex \
  -f markdown+tex_math_dollars+raw_tex \
  --top-level-division=chapter \
  --number-sections \
  -V figurename="图" \
  -V tablename="表" \
  -V title="正交治理" \
  -V author="郭星宇 著" \
  -V date="${DATE}" \
  -V version="${VERSION}" \
  -V pdftitle="正交治理" \
  -V pdfauthor="郭星宇" \
  -V pdfsubject="治理与系统工程" \
  -V pdfkeywords="治理,控制论,信息论,博弈论" \
  -V mainfont="${MAINFONT}" \
  -V cjkmainfont="${CJKMAINFONT}" \
  -V monofont="${MONOFONT}" \
  -V mathfont="${MATHFONT}" \
  -V linestretch="1.3" \
  -V geometry="a4paper,inner=30mm,outer=20mm,top=25mm,bottom=25mm,bindingoffset=5mm" \
  -V fontsize=12pt \
  -V copyright="${COPYRIGHT}" 2>&1 | tee build/pandoc-build.log

# Check for LaTeX errors in the log
if grep -q "LaTeX Error" build/pandoc-build.log; then
  echo "❌ LaTeX errors detected in build log:"
  grep "LaTeX Error" -n build/pandoc-build.log || true
  exit 1
fi

echo "✅ PDF generated successfully: build/Orthogonal-Governance.pdf"
