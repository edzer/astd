FILE	= lec1

all:
	vi $(FILE).Rmd
	make knit

knit:
	echo "library(knitr); knit2html(\"$(FILE).Rmd\")" | R --save -q
	mv $(FILE).html docs

view:
	google-chrome docs/$(FILE).html

www:
	scp lec*html ex_*html epebe_01@ifgifiles.uni-muenster.de:WWW/astd
