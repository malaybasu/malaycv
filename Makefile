#all: malay_cv.pdf malay_resume.pdf
all: malay_cv.pdf

malay_cv.pdf: malay_cv.tex mypub_articles.bib mypub_reviews.bib mypub_others.bib mypub_perspectives.bib
	xelatex -interaction=nonstopmode malay_cv.tex;bibtex articles;bibtex perspectives;bibtex reviews;bibtex others;\
	xelatex -interaction=nonstopmode malay_cv.tex;xelatex -interaction=nonstopmode malay_cv.tex

# #malay_resume.pdf:  malay_resume.tex mypub_articles.bib mypub_reviews.bib mypub_others.bib mypub_perspectives.bib
# 	xelatex -interaction=nonstopmode malay_resume.tex;bibtex articles;bibtex perspectives;bibtex reviews;bibtex others;\
# 	xelatex -interaction=nonstopmode malay_resume.tex;xelatex -interaction=nonstopmode malay_resume.tex
clean:
	rm -rf *.bbl
	rm -rf *.out
	rm -rf *.aux
	rm -rf *.log
	rm -rf *.blg

realclean:
	rm -rf *.bbl
	rm -rf *.out
	rm -rf *.aux
	rm -rf *.lob
	rm -rf *.blg
	rm -rf *.pdf
