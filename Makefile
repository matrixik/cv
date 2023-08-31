MAIN_FILE_EN = cv_en_dobroslaw_zybort

all: clean generate_en

en: clean generate_en

generate_en: ${MAIN_FILE_EN}.tex
	pdflatex ${MAIN_FILE_EN}.tex

clean:
	rm -rf *.out *.log *.aux
