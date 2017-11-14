do_provision(unstable=TRUE)
## failed, so grabbed it from droplets()
drops = droplets()
do_provision(droplet = drops$GroaningPlurality$id, unstable = TRUE)

once completed, hit the url, no url:8000

## deploy the api on a different port - which is provisioned for you, no need for ports
## need to deploy against 8000, but ports handled
do_deploy_api(drops$GroaningPlurality, "plumbertest", "./api", 8001)

## hit the api at
url/plumbertest/score?gre=500&gpa=3.2&rank=2