V=-V template:Madrid -V colortheme:dolphin

pdf:
	@rm -f tmp.*
	pandoc slides.md --slide-level 2 --toc -t beamer -o tmp.tex --template template.tex ${V} 
	@perl -p -i -e 's/^\\caption{}//' tmp.tex
	@pdflatex tmp.tex > /dev/null
	@pdflatex tmp.tex > /dev/null
	@mv tmp.pdf slides.pdf
