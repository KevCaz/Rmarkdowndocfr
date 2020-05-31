# Document pour apprendre à utiliser le package "R markdown"
[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
![Render and deploy HTML document](https://github.com/KevCaz/Rmarkdowndocfr/workflows/Render%20and%20deploy%20HTML%20document/badge.svg)

Le document `ex_Rmarkdown.md` a été conçu pour :

  1. apprendre la syntaxe Pandoc Markdown;
  2. se familiariser les fonctionnalités du packages `rmarkdown`;
  3. découvrir un certains nombre de resource disponible en ligne pour aller plus loin.



Pour installer [`rmarkdown`](https://rmarkdown.rstudio.com/) :

```R
install.packages("rmarkdown")
```

Pour générer le fichier document pdf donné&nbsp;:

```R
rmarkdown::render("UtiliserRMarkdown.Rmd", "pdf_document")
```

où *path* est le chemin vers le document. De même, pour obtenir le document en html, Markdown, pdf et word&nbsp;:


```R
rmarkdown::render("UtiliserRMarkdown.Rmd", "all")  
```


# Remerciements

Merci à [Nicolas Casajus](https://github.com/ahasverus) pour avoir corrigé des coquilles dans le document!


# License

Le document produit sous la license [*Creative Commons BY-NC-SA*](https://creativecommons.org/licenses/by-nc-sa/2.0/)