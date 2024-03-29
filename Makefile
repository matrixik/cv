MAIN_FILE_EN = cv_en_dobroslaw_zybort
ANON_FILE_EN = cv_en

all: clean generate_en

en: clean generate_en

anon: clean generate_anon_en

generate_en: ${MAIN_FILE_EN}.tex
	pdflatex -jobname=${MAIN_FILE_EN} ${MAIN_FILE_EN}.tex

generate_anon_en: ${MAIN_FILE_EN}.tex
	pdflatex -jobname=${ANON_FILE_EN} "\def\isanonymous{1} \input{${MAIN_FILE_EN}.tex}"

clean:
	rm -rf *.out *.log *.aux
