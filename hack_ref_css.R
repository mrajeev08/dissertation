# If using numbers [also restart numbering if possible of in text references!]

fix_css <- function(html) {
  
  ht <- readLines(html)
  ht <- gsub( '</div><div class="csl-right-inline">', "", ht)
  writeLines(ht, html)
}

htmls <- list.files("docs/", full.names = TRUE)
htmls <- htmls[grep(".html", htmls)]

lapply(htmls, fix_css)

ch4 <- readLines("docs/spatial-scale-of-control-and-mixing-predicts-dynamics-of-canine-rabies.html")
ch4 <- gsub("src=\"/Users/mrajeev/Documents/Projects/dynamicSD/analysis/figs/", 
            "src=\"figs/ch4/", 
            ch4)
writeLines(ch4, "docs/spatial-scale-of-control-and-mixing-predicts-dynamics-of-canine-rabies.html")
     