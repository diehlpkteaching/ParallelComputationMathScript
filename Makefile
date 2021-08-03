

all: book.tex
	#git submodule update --init --remote ParallelComputationMathExamples/
	git submodule foreach git pull origin main
	latexmk -pdflatex="lualatex --shell-escape %O %S" -pdf book.tex

clean:
	latexmk -pdf -CA
