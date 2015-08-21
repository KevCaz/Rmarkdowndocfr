# Document pour apprendre à utiliser le package "R markdown"

Le document ".rmd" est un exemple assez complet pour être capable d'utiliser la syntaxe Pandoc Markdown et les fonctionnalités du packages "rmarkdown".

Pour installer le package&nbsp;:

> install.packages("rmarkdown")

Pour générer le fichier document pdf donné&nbsp;:

> rmarkdown:: render("path/ex_Rmarkdown.rmd", "pdf_document")

où *path* est le chemin vers le document. De même pour obtenir le document en html, mardown, pdf et word&nbsp;:

> rmarkdown:: render("path/ex_Rmarkdown.rmd", "all")  


# License

J'ai placé le document produit sous la license [*Creative Commons BY-NC-SA*](https://creativecommons.org/licenses/by-nc-sa/2.0/).
