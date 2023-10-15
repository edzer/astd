#FILE	= storms
FILE	= intro_R

all:
	vi $(FILE).Rmd
	make knit

knit:
	#Rscript -e 'rmarkdown::render("$(FILE).Rmd")'
	quarto render $(FILE).Rmd
	cp -r $(FILE).html $(FILE)_files docs

view:
	google-chrome docs/$(FILE).html

push:
	#scp lec*html ex_*html epebe_01@ifgifiles.uni-muenster.de:WWW/astd
	cp -f *html docs
	git add docs/*
	git commit -a -m 'update'
	git push
