depotools for R
================

With `depotools`, we bring forward a lightweight portfolio management
tool aimed at the `R`-savvy investor. We combine a database backend
(`MariaDB`) for securely managing depots, instruments, trades and the
like with some packages written in `R`for things like

  - PDF trade ticket parsing
  - market data querying (from the market via web API and to/fro
    backend)
  - portfolio / trade performance measurement
  - portfolio benchmarking
  - portfolio optimization

The respective `R` package repos are:

  - [iexcloudr](https://github.com/kermit-t-frog/iexcloudr) for querying
    new market data,
  - [depotr](https://github.com/kermit-t-frog/depotr) for working with
    *this* database.

The database is meant to offer a lightweight access to storing and
retrieving your past trade data across multiple users with some level of
authentication (not *everybody* should be allowed to see my portfolio)
and to play around with strategies using market data that’s (already)
available in the database. For the time being, there are some 200+
instruments sourced from German XETRA, mostly. [Data provided by IEX
Cloud](https://iexcloud.io).

## How to

``` r
library(depotr)
```

    depotr: Set backend with depotr::initDB()
            Set user with depotr::authenticate()

Let’s start with the basic administration workflow: 1) Add a user, 2)
Give them a depot, add some assets to the tradeable universe. As these
are administrative tasks, we should connect using the admin user:

``` r
initDB(host   = 'localhost',
       port   = 3399,
       user   = Sys.getenv('DEPOT_ADMINUSER'),
       pass   = Sys.getenv('DEPOT_ADMINPASS'),
       dbname = Sys.getenv('DEPOT_DBNAME')) 
```

And then

``` r
add_user(username = 'kermit',
         password = 'miss piggy')

add_depot(username    = 'kermit',
          broker      = 'rizzo ltd',
          external_id = 'kmt 042',
          ccy         = 'EUR')

add_instrument(isin   = 'DE0008404005',
               name   = 'Allianz SE',
               ccy    = 'EUR',
               vendor = 'IEX',
               symbol = 'ALV-GY',
               mic    = 'XETR',
               symccy = 'EUR')
```

The admin user can add prices and corporate actions to the backend:

``` r
prices <- readr::read_csv('C:/Users/Kermit/Nextcloud/DEV/R/depotools/data/corporate_action_dummy.csv') %>%
  dplyr::mutate(vendor="IEX",.before=symbol) 
tail(prices)
```

    # A tibble: 6 x 10
      vendor symbol date        open  high   low close aClose fClose  volume
      <chr>  <chr>  <date>     <dbl> <dbl> <dbl> <dbl>  <dbl>  <dbl>   <dbl>
    1 IEX    ALV-GY 2021-04-29  219.  219.  215.  216.   216.   207.  917451
    2 IEX    ALV-GY 2021-04-30  217   218.  216.  216.   216.   207. 1010428
    3 IEX    ALV-GY 2021-05-03  218.  220   217.  220.   220.   210.  888333
    4 IEX    ALV-GY 2021-05-04  220   221.  216.  216.   216.   207. 1401953
    5 IEX    ALV-GY 2021-05-05  218   222.  217.  222.   222.   212. 1516255
    6 IEX    ALV-GY 2021-05-06  212.  216.  212   213.   213.   213. 1357731

Storing the prices:

``` r
prices %>% store_prices()
```

    batch insert of 3630 new price rows completed.

We can also extract corporate actions (dividends and splits) from the
historical OHLC/adjClose market data:

``` r
actions <- prices %>% extract_corporate_actions() 
actions
```

    # A tibble: 4 x 5
      symbol date       close split_factor dividend
      <chr>  <date>     <dbl>        <dbl>    <dbl>
    1 ALV-GY 2018-05-09  199.            1      8  
    2 ALV-GY 2019-05-08  209             1      9  
    3 ALV-GY 2020-05-06  161.            1      9.6
    4 ALV-GY 2021-05-05  222.            1      9.6

and put them into the database:

``` r
actions %>% dplyr::mutate(vendor="IEX",.before=symbol)  %>% store_corporate_actions()
```

    Batch insert of 4 corporate actions completed.

## Let’s book us some trades and a a dividend payment\!

From here on, the APP READ user has sufficient permissions for us:

``` r
initDB(host = 'localhost',
       port = 3399,
       user = Sys.getenv('DEPOT_READUSER'),
       pass = Sys.getenv('DEPOT_READPASS'),
       dbname = Sys.getenv('DEPOT_DBNAME')) 
```

Furthermore, before we can book into our depot / read from our depot, we
must authenticate ourselves with the backend:

``` r
depotr::authenticate('kermit','miss piggy')
```

A **trade ticket** or a **cashflow ticket** must identify the depot, the
instrument, the valuedate and the trade / cashflow / payment components:

``` r
depotr::book_ticket(broker = 'rizzo ltd',
                    external_id = 'kmt 042',
                    valuedate = '2021-01-04',
                    isin='DE0008404005',
                    trade=list(qty=+100,prc=198.95,ccy='EUR'),
                    payment=list(type='fee',amount=-10,ccy='EUR'))

depotr::book_ticket('rizzo ltd', 'kmt 042', '2021-01-15', 
                    isin='DE0008404005',
                    trade=list(qty=+100,prc=202.50,ccy='EUR'),
                    payment=list(type='fee',amount=-10,ccy='EUR'))

depotr::book_ticket('rizzo ltd', 'kmt 042', '2021-02-26',
                    isin='DE0008404005',
                    trade=list(qty=-120,prc=200.20,ccy='EUR'),
                    payment=list(
                      list(type='fee',amount=-10,ccy='EUR'),
                      list(type='tax',amount=-22.12, ccy='EUR')
                      ))

depotr::book_ticket('rizzo ltd', 'kmt 042', '2021-05-10',
                    isin='DE0008404005',
                    cashflow=list(type='dividend',amount=768, ccy='EUR'))

depotr::book_ticket('rizzo ltd', 'kmt 042', '2021-05-11',
                    isin='DE0008404005',
                    trade=list(qty=-40,prc=212.20,ccy='EUR'),
                    payment=list(type='fee',amount=-10,ccy='EUR'))
```

## Convenience functions

`position` gives the aggregated position as of date:

``` r
position()
```

    # A tibble: 1 x 12
      depot_owner depot_broker depot_external_id depot_ccy isin         ins_ccy
      <chr>       <chr>        <chr>             <chr>     <chr>        <chr>  
    1 kermit      rizzo ltd    kmt 042           EUR       DE0008404005 EUR    
    # ... with 6 more variables: pos_valuedate <date>, pos_qty <dbl>,
    #   pos_vol <dbl>, pos_ccy <chr>, mkt_valuedate <date>, mkt_value <dbl>

``` r
position(valuedate = "2021-04-01")
```

    # A tibble: 1 x 12
      depot_owner depot_broker depot_external_id depot_ccy isin         ins_ccy
      <chr>       <chr>        <chr>             <chr>     <chr>        <chr>  
    1 kermit      rizzo ltd    kmt 042           EUR       DE0008404005 EUR    
    # ... with 6 more variables: pos_valuedate <date>, pos_qty <dbl>,
    #   pos_vol <dbl>, pos_ccy <chr>, mkt_valuedate <date>, mkt_value <dbl>

`cashflows` gives us the list of all active flows between two dates:

``` r
cashflows(from = '2021-01-01', to = '2021-05-10')
```

    # A tibble: 8 x 11
      depot_owner depot_broker depot_external_id depot_ccy valuedate  isin   ins_ccy
      <chr>       <chr>        <chr>             <chr>     <date>     <chr>  <chr>  
    1 kermit      rizzo ltd    kmt 042           EUR       2021-01-04 DE000~ EUR    
    2 kermit      rizzo ltd    kmt 042           EUR       2021-01-04 DE000~ EUR    
    3 kermit      rizzo ltd    kmt 042           EUR       2021-01-15 DE000~ EUR    
    4 kermit      rizzo ltd    kmt 042           EUR       2021-01-15 DE000~ EUR    
    5 kermit      rizzo ltd    kmt 042           EUR       2021-02-26 DE000~ EUR    
    6 kermit      rizzo ltd    kmt 042           EUR       2021-02-26 DE000~ EUR    
    7 kermit      rizzo ltd    kmt 042           EUR       2021-02-26 DE000~ EUR    
    8 kermit      rizzo ltd    kmt 042           EUR       2021-05-10 DE000~ EUR    
    # ... with 4 more variables: flow_class <chr>, flow_type <chr>,
    #   flow_amount <dbl>, flow_ccy <chr>

The `flow_table` function provides us with a basis table for performance
evaluation. Any position at the start date is valued at market and
assumed to be ‘invested’:

``` r
ft <- flow_table(from = '2021-01-01',to = '2021-05-10')
ft
```

    # A tibble: 5 x 7
      owner  broker    extid   date       isin         ccy    amount
      <chr>  <chr>     <chr>   <date>     <chr>        <chr>   <dbl>
    1 kermit rizzo ltd kmt 042 2021-05-10 DE0008404005 EUR    17016 
    2 kermit rizzo ltd kmt 042 2021-01-04 DE0008404005 EUR   -19905 
    3 kermit rizzo ltd kmt 042 2021-01-15 DE0008404005 EUR   -20260 
    4 kermit rizzo ltd kmt 042 2021-02-26 DE0008404005 EUR    23992.
    5 kermit rizzo ltd kmt 042 2021-05-10 DE0008404005 EUR      768 

And we can use that table to calculate the internal rate of return:

``` r
ft %>% performance_table()
```

    # A tibble: 1 x 2
      ccy   performance
      <chr>       <dbl>
    1 EUR         0.201

# Roadmap

  - trade level performance metrics
  - interaction with backtesting tools, maybe `backtest`
  - convenience functions for return calculations / analysis
  - convenience functions for risk analysis
  - create / compare to benchmark portfolios
  - wrap instrument attributes (sector, region, user defined parms?)
  - convenience functions for portfolio optimization (`quadprog`,
    simulation etc)

… stay tuned.
