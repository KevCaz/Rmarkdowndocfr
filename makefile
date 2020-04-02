
all:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "all")'

pdf:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "pdf_document")'

html:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "html_document")'
	mv UtiliserRMarkdown.html index.html
