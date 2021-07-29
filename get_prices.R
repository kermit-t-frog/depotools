rm(list=ls())
setwd("C:/Users/Kermit/Nextcloud/DEV/R/depotools/")
library(depotr)
library(iexcloudr)
library(magrittr)
iexcloudr::apikey(api_key =  Sys.getenv("IEXAPIKEYPUBLIC"),secret_key = Sys.getenv("IEXAPIKEYSECRET"),sandbox = FALSE)

symbols <- c("DBK-GY","BMW3-GY","BEI-GY","DPW-GY","DTE-GY","DUE-GY","FRE-GY","FME-GY","DB1-GY","HEI-GY","HEN3-GY","1COV-GY","IFX-GY","RWE-GY","DAI-GY","SAP-GY","SIE-GY","TKA-GY","VOW3-GY","LHA-GY","HNR1-GY","ALV-GY","MUV2-GY","DWNI-GY","ADS-GY","O2D-GY","VNA-GY","BTCE-GY","DHER-GY","JEN-GY","BAS-GY","BAYN-GY","B4B-GY","CBK-GY","EOAN-GY","ENR-GY","E909-GY","EL4Y-GY","ELFW-GY","EVK-GY","HAG-GY","KBX-GY","SDF-GY","OSR-GY","PAH3-GY","SHL-GY","TLX-GY","UN01-GY","WCH-GY","ZAL-GY","BSD2-GY","TOTB-GY","LOR-GY","AXA-GY","MOH-GY","BNP-GY","H4ZA-GY","LIN-GY","X010-GY","AIR-GY","AMD-GY","AHLA-GY","1QZ-GY","INL-GY","MSF-GY","NVD-GY","TSFA-GF")



purrr::walk(rest$symbol,function(s){
  tryCatch({
    prc <- iexcloudr::prices_batch(s,start_date ="2000-01-01")
    readr::write_csv(prc,sprintf("market/%s.csv",s))
    message(s," ",nrow(prc)," ",round(100*iexcloudr::credit_usage()/5e6,digits=2),"%")
  },
  error = function(e){stop(e)})
})

## 
prc <- readr::read_csv("market/H4ZA-GY.csv")

readr::read_csv("market/HAG-GY.csv") %>% depotr::extract_corporate_actions(accuracy=2) 
