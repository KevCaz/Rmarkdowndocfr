# Document pour apprendre à utiliser le package "R markdown"

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)

Le document `ex_Rmarkdown.md` est un exemple assez complet pour utiliser:

  1. la syntaxe Pandoc Markdown;
  2. les fonctionnalités du packages `rmarkdown`.

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

# Remerciements.

Merci à Nicolas Casajus pour avoir corrigé des coquilles dans le document!


# License

Le document produit sous la license [*Creative Commons BY-NC-SA*](https://creativecommons.org/licenses/by-nc-sa/2.0/)
