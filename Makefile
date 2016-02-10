MAIN_FILE = cv_pl_dobroslaw_zybort

all: clean generate

generate: ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex

clean:
	rm -rf *.out *.log *.out *.aux *.synctex.gz
