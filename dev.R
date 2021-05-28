rm(list=ls())
setwd("C:/Users/Kermit/Nextcloud/DEV/R/depotools/")
library(depotr)
library(iexcloudr)
library(magrittr)
make_testdb <- function(){shell(sprintf("cd SQL && make_test.bat \"%s\"",rstudioapi::askForPassword()))}
make_testdb()
iexcloudr::apikey(api_key =  Sys.getenv("IEXAPIKEYPUBLIC"),secret_key = Sys.getenv("IEXAPIKEYSECRET"),sandbox = TRUE)
depotr::initDB('localhost',3399,Sys.getenv('DEPOT_ADMINUSER'),Sys.getenv('DEPOT_ADMINPASS'),Sys.getenv('DEPOT_DBNAME'))

depotr::add_user('kermit','miss piggy')
depotr::authenticate('kermit','miss piggy')
depotr::add_depot('kermit','broker','depot a','EUR')

depotr::add_instrument('DE0008404005','Allianz SE','EUR',vendor = 'IEX',symbol='ALV-GY',mic='XETR',symccy='EUR')
depotr::add_instrument('DE0008232125','Lufthansa','EUR',vendor = 'IEX',symbol='LHA-GY',mic='XETR',symccy='EUR')

readr::read_csv('C:/Users/Kermit/Nextcloud/DEV/R/depotools/data/corporate_action_dummy.csv') %>%
  dplyr::mutate(vendor="IEX",.before=symbol) %>%
depotr::store_prices()

readr::read_csv('C:/Users/Kermit/Nextcloud/DEV/R/depotools/data/corporate_action_dummy.csv') %>%
  depotr::extract_corporate_actions() %>% 
  dplyr::mutate(vendor="IEX",.before=symbol) %>%
  depotr::store_corporate_actions()
  


# buying and selling some Allianz, and getting some dividends
# buy, buy, sell, dividends, buy
depotr::book_ticket('broker','depot a','2021-01-04',isin='DE0008404005',trade=list(qty=+100,prc=198.95,ccy='EUR'),payment=list(type='fee',amount=-10,ccy='EUR'))
depotr::book_ticket('broker','depot a','2021-01-15',isin='DE0008404005',trade=list(qty=+100,prc=202.50,ccy='EUR'),payment=list(type='fee',amount=-10,ccy='EUR'))
depotr::book_ticket('broker','depot a','2021-02-26',isin='DE0008404005',trade=list(qty=-120,prc=200.20,ccy='EUR'),payment=list(type='fee',amount=-10,ccy='EUR'))
depotr::book_ticket('broker','depot a','2021-05-05',isin='DE0008404005',cashflow=list(type='dividend',amount=80 * 9.60, ccy='EUR'))
depotr::book_ticket('broker','depot a','2021-05-06',isin='DE0008404005',trade=list(qty=-40,prc=215.20,ccy='EUR'),payment=list(type='fee',amount=-10,ccy='EUR'))




depotr:::get_wrapper("CALL cashflow_from_to('2021-01-01','2021-05-31')",authenticate = TRUE)


position("2021-05-31")

