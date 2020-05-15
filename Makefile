

all: book.tex
	git submodule update --init --remote ParallelComputationMathExamples/
	latexmk -pdflatex="lualatex --shell-escape %O %S" -pdf book.tex

clean:
	latexmk -pdf -CA
