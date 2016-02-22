MAIN_FILE_PL = cv_pl_dobroslaw_zybort
MAIN_FILE_EN = cv_en_dobroslaw_zybort

all: clean generate_pl generate_en

pl: clean generate_pl

en: clean generate_en

generate_pl: ${MAIN_FILE_PL}.tex
	pdflatex ${MAIN_FILE_PL}.tex

generate_en: ${MAIN_FILE_EN}.tex
	pdflatex ${MAIN_FILE_EN}.tex

clean:
	rm -rf *.out *.log *.out *.aux *.synctex.gz
