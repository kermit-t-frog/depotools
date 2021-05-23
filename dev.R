setwd("C:/Users/Kermit/Nextcloud/DEV/R/depotools/")
library(depotr)
library(iexcloudr)

make_testdb <- function(){shell(sprintf("cd SQL && make_test.bat \"%s\"",rstudioapi::askForPassword()))}

iexcloudr::apikey(api_key =  Sys.getenv("IEXAPIKEYPUBLIC"),secret_key = Sys.getenv("IEXAPIKEYSECRET"),sandbox = TRUE)
depotr::initDB('localhost',3399,Sys.getenv('DEPOT_ADMINUSER'),Sys.getenv('DEPOT_ADMINPASS'),Sys.getenv('DEPOT_DBNAME'))








