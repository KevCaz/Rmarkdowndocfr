## ----sesinfo------------------------------------------------------------------
sessionInfo()
rmarkdown::pandoc_version()


## ----extfun, include = FALSE--------------------------------------------------
source("scripts/zzz.R", local = knitr::knit_global())
if (Sys.info()["user"] == "kevcaz") {
  JuliaCall::julia_setup("/home/kevcaz/Applications/julia/usr/bin")
} else {
  library(JuliaCall)
}


## ----yaml---------------------------------------------------------------------
library(yaml)
yaml.load_file("assets/data_01.yaml")


## ----metadata-----------------------------------------------------------------
rmarkdown::metadata


## ---- addition----------------------------------------------------------------
# une addition avec R.
2+3


## -----------------------------------------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----sanscode, echo = FALSE---------------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----code14, echo = c(1, 4)---------------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----codesans13, echo = -c(1:3)-----------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----comment1, comment = "$ "-------------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----comment2, comment="R>>"--------------------------------------------------
# une addition de variables avec R
a <- 2
b <- 3
a + b


## ----markup, results = 'markup'-----------------------------------------------
# une division avec R
cat("Exemple de division avec R: 1/998.001 = ", 1/998.001)


## ----asis, results = 'asis'---------------------------------------------------
# une division avec R
cat("Exemple de division avec R: 1/998.001 = ", 1/998.001)


## ----hide, results = 'hide'---------------------------------------------------
# une division avec R
cat("Exemple de division avec R: 1/998.001 = ", 1/998.001)


## -----------------------------------------------------------------------------
a <- 2
print(a)
b <- 3
print(b)
2 + 3


## ----hold, results = 'hold'---------------------------------------------------
a <- 2
print(a)
b <- b
print(b)
2 + 3


## -----------------------------------------------------------------------------
message("Ceci est un message")
warning("Ceci est un avertissement")
# stop("PCeci est un problème")
2 + 3


## ----sansmessage, message = FALSE---------------------------------------------
message("Ceci est un message")
warning("Ceci est un avertissement")
# stop("Ceci est un problème")
2 + 3


## ----sansavertissment, warning = FALSE----------------------------------------
message("Ceci est un message")
warning("Ceci est un avertissement")
# stop("Ceci est un problème")
2 + 3


## ----sansavertissment2, warning = FALSE, results = 'hide'---------------------
message("Ceci est un message")
warning("Ceci est un avertissement")
# stop("Ceci est un problème")
2 + 3


## ----erreur, error = TRUE-----------------------------------------------------
message("Ceci est un message")
warning("Ceci est un avertissement")
stop("Ceci est un problème")
2 + 3


## ----eval, eval = FALSE-------------------------------------------------------
## install.packages(`rmarkdown`)


## ----include, include = FALSE-------------------------------------------------
mon_addition <- function(a, b) {
    return(a + b)
}
res <- mon_addition(2, 3)


## ----res----------------------------------------------------------------------
print(res)


## ----mon_addition-------------------------------------------------------------
mon_addition(12, 30)


## ----dataframe1---------------------------------------------------------------
var1 <- 20 * runif(12)
tab1 <- data.frame(
    experience = paste0("traitement_", rep(1:3, each = 4)),
    replicat = rep(letters[1:4], 3),
    var1 = var1,
    var2 = var1 + rnorm(12)
    )


## ----table1-------------------------------------------------------------------
library(knitr)
kable(tab1, caption = "Table créée à partir de *df1*")


## ----table2-------------------------------------------------------------------
kable(tab1, caption = "Table créée à partir de *df1*", digits = 3, row.names = TRUE)


## ----figure-------------------------------------------------------------------
plot(tab1$var1, tab1$var2)


## ----figdim1, fig.cap = "une figure de avec une légende", fig.height = 4, fig.width = 4, fig.align = "right"----
plot(tab1$var1, tab1$var2)


## ----figdim2, fig.cap= "Figure 9x6", fig.width = 9, fig.aspect = 1.5----------
plot(tab1$var1,tab1$var2)


## ----figdim3, out.width = "100%"----------------------------------------------
plot(tab1$var1, tab1$var2)


## ----figdim4, out.width = "100%", dev = "jpeg"--------------------------------
plot(tab1$var1, tab1$var2)


## ----figdim5, out.width = "100%", dev = "png", fig.cap= "Faible résolution", dpi = 36----
plot(tab1$var1, tab1$var2)


## ----figdim6, out.width = "100%", dev = "png", fig.cap= "Forte résolution", dpi = 300----
plot(tab1$var1, tab1$var2)


## ----figfinale, dev = "png", dpi = 300, fig.height = 5, fig.width = 8, echo = FALSE, fig.link = "https://github.com/KevCaz/Rmarkdowndocfr", fig.cap = "Figure associé à la table 1. Le gris pour l'expérience 1, bleu pour la seconde et violet pour la troisième."----
par(bty="l", font = 2, las = 1)
plot(tab1$var1, tab1$var2, pch = 15:19, col = rep(c(8, 4, 6), each = 5),
    xlab = "Mon axe des abscisses", ylab = "Mon axe des ordonnées")
legend("bottomright", letters[1:5], pch = 15:19, bty = "n")


## ----iclgraph, fig.align = "center", out.width = "40%", echo = FALSE----------
include_graphics("./images/Rlogo.png")


## ----application, echo = FALSE, fig.cap = "Mon modèle linéaire", fig.width = 8, fig.height = 8, fig.align = 'center'----
mod1 <- lm(var2 ~ var1, data = tab1)
kable(summary(mod1)$coefficients)
par(bty = "l", mfrow = c(2, 2))
plot(mod1)






## ----showcode, code=readLines("scripts/scr_externe1.R"), eval = FALSE---------
## NA


## ----source-script, include = FALSE-------------------------------------------
source("scripts/scr_externe1.R", local = knitr::knit_global())


## ----resextcode---------------------------------------------------------------
var4


## ----showextcode, code ="var1 <- 1"-------------------------------------------


## ----showextcode, code = readLines("scripts/scr_externe1.R")------------------


## ----showcode, code=readLines("scripts/scr_externe2.R"), eval = FALSE---------
## NA


## ----read_chunk---------------------------------------------------------------
read_chunk("scripts/scr_externe2.R")


## ----part1--------------------------------------------------------------------
var1 <- 2
var2 <- 10*var1


## ----part2--------------------------------------------------------------------
var3 <- cos(var2)
var4 <- sin(var2)


## -----------------------------------------------------------------------------
knitr::opts_chunk$get()


## ---- comment = "#R>"---------------------------------------------------------
knitr::opts_current$get()


## -----------------------------------------------------------------------------
knitr::opts_chunk$set(
    comment = "#R>",
    dev = "png",
    dpi = 144,
    fig.align = 'center',
    fig.width = 4
)


## ----dummy--------------------------------------------------------------------
plot(1, 1)


## -----------------------------------------------------------------------------
knitr::opts_chunk$restore()


## -----------------------------------------------------------------------------
knit_hooks$set(hook1 = function(before, options, envir) {
    if (before) {
        "_Code exécuté avant le bloc!_\n\n"
    } else {
        "\n\n_Code exécuté après le bloc..._"
    }
})


## ----ex_hook1, hook1 = TRUE---------------------------------------------------
1 + 1


## ----opt1 = "cool"------------------------------------------------------------
options(c("opt1"))


## -----------------------------------------------------------------------------
# voir https://github.com/yihui/knitr-examples/blob/master/045-chunk-hook.md
knit_hooks$set(foo2 = function(before, options, envir) {
    if (!before) {
        z = capture.output(str(options[c("eval", "foo2", "bar1")]))
        z = paste("    ", z, sep = "", collapse = "\n")
        paste("Some chunk options in the above chunk are:\n\n", z, sep = "")
    }
})


## ---- foo2 = TRUE, bar1 = "cool"----------------------------------------------


## ---- foo2 = 10, bar1 = "cool2"-----------------------------------------------


## -----------------------------------------------------------------------------
names(knitr::knit_engines$get())


## ----eval = FALSE-------------------------------------------------------------
## install.packages(c("reticulate", "JuliaCall"))


## -----------------------------------------------------------------------------
knitr::knit_engines$get()$python 


## [2, 2] * 3


## -----------------------------------------------------------------------------
knitr::knit_engines$get()$julia


## [2, 2] .* 3

