setwd("D:/MYaseen208_B0-22-7A-E9-23-9B/Consultancy/Mr._M._Yaseen/2023-04-17_IntroR/images")

library(pdftools)

pdf_convert(
    pdf       = "RNewYorkTimes.pdf"
  , format    = "png"
  , pages     = 1
  , filenames = "RNewYorkTimes.png"
  , dpi       = 300
  )


library(pdftools)
library(furrr)

list.files(
    path       = getwd()
  , pattern    = "*.pdf"
  , full.names = TRUE
  ) |> 
  future_map(
      .x        = 
    , .f        = pdf_convert
    , format    = "png"
    , pages     = NULL
    , filenames = NULL
    , dpi       = 300
    )


future_map(
    .x = paste(getwd(), "/", list.files(getwd(), pattern = "*.pdf"), sep = "")
  , .f = function(files) {
          pdf_convert(files, format = "png", dpi = 300, pages = NULL, filenames = )
    }
  )


