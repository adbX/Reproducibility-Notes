.DEFAULT_GOAL := RP

RP : content/main.tex clean out
	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS pdflatex --output-directory=./out main.tex
	#cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS bibtex main
	cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS biber main
	cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS makeindex main
	cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS makeglossaries main
	#TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS pdflatex --output-directory=./out main.tex
	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS pdflatex --output-directory=./out main.tex
	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS pdflatex --output-directory=./out main.tex
	cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS makeindex main
	cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS makeglossaries main
	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS pdflatex --output-directory=./out main.tex

	#cd out && TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS htlatex main.tex "" "" "" "-interaction=batchmode"
	#ln -s ../plots out/plots

#thesis-html : content/commands.tex content/loa-terms.tex content/abstract.tex content/main.tex content/cover.tex content/abstract.tex content/chap1.tex content/chap2.tex content/chap3.tex content/chap4.tex content/chap5.tex content/chap6.tex content/chap7.tex content/main.bib clean
#	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS htlatex main.tex
#	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS bibtex main
#	TEXINPUTS=./classes:./styles:./content:$$TEXINPUTS BIBINPUTS=./content:$$BIBINPUTS BSTINPUTS=./styles:$$BSTINPUTS htlatex main.tex
#	cd html
#	TEXINPUTS=../classes:../styles:../content:$$TEXINPUTS BIBINPUTS=../content:$$BIBINPUTS BSTINPUTS=../styles:$$BSTINPUTS htlatex main.tex 

out:
	@if [ ! -d out ]; then mkdir out; fi;

clean :
	@rm -rf out/*
