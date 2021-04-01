# If using numbers [also restart numbering if possible of in text references!]

fix_css <- function(html) {
  
  ht <- readLines(html)
  ht <- gsub( '</div><div class="csl-right-inline">', "", ht)
  writeLines(ht, html)
}

htmls <- list.files("docs/", full.names = TRUE)
htmls <- htmls[grep(".html", htmls)]

lapply(htmls, fix_css)

