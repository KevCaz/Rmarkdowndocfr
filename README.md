Utiliser R markdown
================

-   [Remerciements](#remerciements)
-   [Contribuer](#contribuer)
-   [License](#license)

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Render and deploy HTML
document](https://github.com/KevCaz/Rmarkdowndocfr/workflows/Render%20and%20deploy%20HTML%20document/badge.svg)](https://github.com/KevCaz/Rmarkdowndocfr/actions?query=workflow%3A%22Render+and+deploy+HTML+document%22)

[Ce document](https://kevcaz.github.io/Rmarkdowndocfr/) est une
introduction à R Markdown conçue pour répondre aux objectifs suivants:

1.  comprendre ce qu’est R Markdown;
2.  comprendre les liens entre R, Markdown et Pandoc;
3.  apprendre la syntaxe Pandoc Markdown;
4.  apprendre à créer des documents dynamiques avec le package
    `rmarkdown`.

Pour installer [`rmarkdown`](https://rmarkdown.rstudio.com/):

``` r
install.packages("rmarkdown")
```

Notez que ce package requiert [Pandoc](https://pandoc.org/), voir
<https://pandoc.org/installing.html> si vous rencontrez des problèmes
d’installation. Une fois le package installé, vous pouvez le charger et
vérifier la version du package installée ainsi que celle de Pandoc comme
suit:

``` r
library(rmarkdown)
packageVersion("rmarkdown")
```

    ## [1] '2.11'

``` r
pandoc_available()
```

    ## [1] TRUE

``` r
pandoc_version()
```

    ## [1] '2.14.2'

Pour générer le fichier document pdf donné :

``` r
render("UtiliserRMarkdown.Rmd", "pdf_document")
```

De même, pour obtenir le document en html, Markdown, pdf et Word :

``` r
render("UtiliserRMarkdown.Rmd", "all")  
```

# Remerciements

Merci à [Nicolas Casajus](https://github.com/ahasverus) pour avoir
corrigé des coquilles dans une première version du document!

# Contribuer

Toutes les contributions sone bienvenues et même souhaitées. Des fautes
d’orthographe, de grammaire, des coquilles? Il manque de l’information?
N’hésitez pas à ouvrir un “issue” et même mieux, une PR!

# License

Le document produit sous la license [*Creative Commons
BY-NC-SA*](https://creativecommons.org/licenses/by-nc-sa/2.0/)
