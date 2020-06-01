# Document pour apprendre à utiliser le package "R markdown"
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Render and deploy HTML document](https://github.com/KevCaz/Rmarkdowndocfr/workflows/Render%20and%20deploy%20HTML%20document/badge.svg)](https://github.com/KevCaz/Rmarkdowndocfr/actions?query=workflow%3A"Render+and+deploy+HTML+document")


[Ce document](https://kevcaz.github.io/Rmarkdowndocfr/) est une introduction à R Markdown conçu pour répondre aux objectifs suivants:

1. comprendre ce qu'est R Markdown;
2. comprendre les liens entre R, Markdown et Pandoc;
3. apprendre la syntaxe Pandoc Markdown;
4. apprendre à créer des documents dynamiques avec le package `rmarkdown`.



Pour installer [`rmarkdown`](https://rmarkdown.rstudio.com/) :

```R
install.packages("rmarkdown")
```

Pour générer le fichier document pdf donné&nbsp;:

```R
rmarkdown::render("UtiliserRMarkdown.Rmd", "pdf_document")
```

où *path* est le chemin vers le document. De même, pour obtenir le document en html, Markdown, pdf et Word&nbsp;:


```R
rmarkdown::render("UtiliserRMarkdown.Rmd", "all")  
```


# Remerciements

Merci à [Nicolas Casajus](https://github.com/ahasverus) pour avoir corrigé des coquilles dans une première version du document!


# License

Le document produit sous la license [*Creative Commons BY-NC-SA*](https://creativecommons.org/licenses/by-nc-sa/2.0/)