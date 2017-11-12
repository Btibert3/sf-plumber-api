options(stringsAsFactors = FALSE)

r = plumber::plumb("admit-model.R")
r$run(port = 8000)
