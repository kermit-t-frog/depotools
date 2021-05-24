rm(list=ls())
setwd("C:/Users/Kermit/Nextcloud/DEV/R/depotools/")
library(depotr)
library(iexcloudr)

make_testdb <- function(){shell(sprintf("cd SQL && make_test.bat \"%s\"",rstudioapi::askForPassword()))}

iexcloudr::apikey(api_key =  Sys.getenv("IEXAPIKEYPUBLIC"),secret_key = Sys.getenv("IEXAPIKEYSECRET"),sandbox = TRUE)
depotr::initDB('localhost',3399,Sys.getenv('DEPOT_ADMINUSER'),Sys.getenv('DEPOT_ADMINPASS'),Sys.getenv('DEPOT_DBNAME'))

depotr::add_user('kermit','miss piggy')
depotr::authenticate('kermit','miss piggy')
depotr::add_depot('kermit','muppet inc.','green book','EUR')

depotr::add_instrument('DE1231231231','kermit inc','EUR')
depotr::add_instrument('DE0008404005','Allianz SE','EUR',vendor = 'IEX',symbol='ALV-GY',mic='XETR',symccy='EUR')

actions <- readr::read_csv('data/corporate_action_dummy.csv') %>%
  iexcloudr::extract_corporate_actions() %>%
  dplyr::mutate(vendor="IEX")

depotr::store_corporate_actions(actions)








