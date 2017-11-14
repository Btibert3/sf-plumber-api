options(stringsAsFactors = FALSE)

## load the libraries
library(plumber)

## manual way locally
r = plumber::plumb("admit-model.R")
r$run(port = 8000)


## CANT GET DO to WORK, what is the code to spin up docker/git setup
## https://www.rplumber.io/docs/hosting.html#docker

#### HELP https://www.rplumber.io/docs/hosting.html#digitalocean

## test the connection to Digital OCEAN
## Environment Variables DO_
# analogsea::droplets()

## initialize a droplet
# mydrop = plumber::do_provision()
# 
# ## update the packages
# analogsea::droplets()
# analogsea::install_r_package(mydrop$id)
# 
# ## deploy the api
# plumber::do_deploy_api(mydrop$id, "admitscore", "./api/plumber.r", "8000")
