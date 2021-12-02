url_this <- function(adr, base = "https://kevcaz.github.io/Rmarkdowndocfr/") {
  paste0("<", base, adr, ">")
}

url_this_gh <- function(adr, lkn = NULL, base = "https://github.com/KevCaz/Rmarkdowndocfr") {
  if (!is.null(lkn)) {
    paste0("[", lkn, "](", base, adr, ")")
  } else paste0("<", base, adr, ">")
}