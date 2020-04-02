
all:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "all")'

pdf:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "pdf_document")'

html:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "html_document")'
	mkdir -p public
	mv UtiliserRMarkdown.html public/index.html
	cp -r images public/

