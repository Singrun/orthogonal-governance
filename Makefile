PDF=build/Orthogonal-Governance.pdf
MD=build/book.md
.PHONY: pdf clean
pdf:
	./scripts/build_book.sh
	pandoc $(MD) -o $(PDF) --pdf-engine=xelatex --toc -V mainfont="Noto Sans CJK SC" -V geometry:margin=1in
	@echo "Generated $(PDF)"
clean:
	rm -rf build
