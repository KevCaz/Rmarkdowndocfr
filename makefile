all:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "all")'

pdf:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "pdf_document")'

word:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "word_document")'

html:
	Rscript -e 'rmarkdown::render("UtiliserRMarkdown.Rmd", "html_document")'
	mkdir -p public
	mv UtiliserRMarkdown.html public/index.html
	cp -r images public/

readme:
	Rscript -e 'rmarkdown::render("README.Rmd", "github_document")'	
	rm README.html