

all: book.tex
	git submodule update --remote ParallelComputationMathExamples/
	latexmk -pdflatex="lualatex --shell-escape %O %S" -pdf book.tex
