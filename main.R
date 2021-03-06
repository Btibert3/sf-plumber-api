options(stringsAsFactors = FALSE)

## load the libraries
library(plumber)
library(analogsea)

## manual way locally
# r = plumber::plumb("api/plumber.R")
# r$run(port = 8000, swagger = TRUE)


## CANT GET DO to WORK, what is the code to spin up docker/git setup
## https://www.rplumber.io/docs/hosting.html#docker

#### HELP https://www.rplumber.io/docs/hosting.html#digitalocean

## test the connection to Digital OCEAN
## Environment Variables DO_
# analogsea::droplets()

## initialize a droplet
mydrop = plumber::do_provision()
# may error out on port 22


# # ## update the packages
# analogsea::droplets()
analogsea::install_r_package(mydrop$id)

# ## deploy the api (from the home directory)
plumber::do_deploy_api(mydrop$id, "admitscore", "./api/", "8001", preflight = "swagger=TRUE")
