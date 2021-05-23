/*------------------------------------------------------------------------------
 ______   _______  _______  _______ _________   _______  _______  _______  ______  
(  __  \ (  ____ \(  ____ )(  ___  )\__   __/  (  ____ )(  ____ )(  ___  )(  __  \ 
| (  \  )| (    \/| (    )|| (   ) |   ) (     | (    )|| (    )|| (   ) || (  \  )
| |   ) || (__    | (____)|| |   | |   | |     | (____)|| (____)|| |   | || |   ) |
| |   | ||  __)   |  _____)| |   | |   | |     |  _____)|     __)| |   | || |   | |
| |   ) || (      | (      | |   | |   | |     | (      | (\ (   | |   | || |   ) |
| (__/  )| (____/\| )      | (___) |   | |     | )      | ) \ \__| (___) || (__/  )
(______/ (_______/|/       (_______)   )_(     |/       |/   \__/(_______)(______/ 
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
     _       _        _                    
  __| | __ _| |_ __ _| |__   __ _ ___  ___ 
 / _` |/ _` | __/ _` | '_ \ / _` / __|/ _ \
| (_| | (_| | || (_| | |_) | (_| \__ \  __/
 \__,_|\__,_|\__\__,_|_.__/ \__,_|___/\___|
------------------------------------------------------------------------------*/

DROP DATABASE IF EXISTS depotdb;


CREATE DATABASE depotdb 
                CHARACTER SET 'utf8'
                COLLATE 'utf8_general_ci';

/*------------------------------------------------------------------------------
                  _                 ___      _        
  /\/\   __ _ ___| |_ ___ _ __     /   \__ _| |_ __ _ 
 /    \ / _` / __| __/ _ \ '__|   / /\ / _` | __/ _` |
/ /\/\ \ (_| \__ \ ||  __/ |     / /_// (_| | || (_| |
\/    \/\__,_|___/\__\___|_|    /___,' \__,_|\__\__,_|
------------------------------------------------------------------------------*/

/* currency data table */
CREATE TABLE depotdb.currency (
     ccy            CHAR(3) NOT NULL PRIMARY KEY
    ,`name`         VARCHAR(60)
    ,digits         TINYINT UNSIGNED
);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AED','United Arab Emirates dirham',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AFN','Afghan afghani',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ALL','Albanian lek',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AMD','Armenian dram',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ANG','Netherlands Antillean guilder',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AOA','Angolan kwanza',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ARS','Argentine peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AUD','Australian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AWG','Aruban florin',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('AZN','Azerbaijani manat',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BAM','Bosnia and Herzegovina convertible mark',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BBD','Barbados dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BDT','Bangladeshi taka',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BGN','Bulgarian lev',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BHD','Bahraini dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BIF','Burundian franc',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BMD','Bermudian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BND','Brunei dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BOB','Boliviano',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BOV','Bolivian Mvdol',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BRL','Brazilian real',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BSD','Bahamian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BTN','Bhutanese ngultrum',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BWP','Botswana pula',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BYN','Belarusian ruble',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('BZD','Belize dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CAD','Canadian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CDF','Congolese franc',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CHE','WIR euro',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CHF','Swiss franc',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CHW','WIR franc',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CLF','Unidad de Fomento',4);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CLP','Chilean peso',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CNY','Chinese yuan',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('COP','Colombian peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('COU','Unidad de Valor Real',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CRC','Costa Rican colon',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CUC','Cuban convertible peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CUP','Cuban peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CVE','Cape Verdean escudo',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('CZK','Czech koruna',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('DJF','Djiboutian franc',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('DKK','Danish krone',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('DOP','Dominican peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('DZD','Algerian dinar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('EGP','Egyptian pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ERN','Eritrean nakfa',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ETB','Ethiopian birr',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('EUR','Euro',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('FJD','Fiji dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('FKP','Falkland Islands pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GBP','Pound sterling',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GEL','Georgian lari',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GHS','Ghanaian cedi',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GIP','Gibraltar pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GMD','Gambian dalasi',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GNF','Guinean franc',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GTQ','Guatemalan quetzal',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('GYD','Guyanese dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('HKD','Hong Kong dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('HNL','Honduran lempira',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('HRK','Croatian kuna',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('HTG','Haitian gourde',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('HUF','Hungarian forint',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('IDR','Indonesian rupiah',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ILS','Israeli new shekel',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('INR','Indian rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('IQD','Iraqi dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('IRR','Iranian rial',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ISK','Icelandic krona',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('JMD','Jamaican dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('JOD','Jordanian dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('JPY','Japanese yen',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KES','Kenyan shilling',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KGS','Kyrgyzstani som',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KHR','Cambodian riel',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KMF','Comoro franc',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KPW','North Korean won',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KRW','South Korean won',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KWD','Kuwaiti dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KYD','Cayman Islands dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('KZT','Kazakhstani tenge',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LAK','Lao kip',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LBP','Lebanese pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LKR','Sri Lankan rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LRD','Liberian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LSL','Lesotho loti',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('LYD','Libyan dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MAD','Moroccan dirham',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MDL','Moldovan leu',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MGA','Malagasy ariary',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MKD','Macedonian denar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MMK','Myanmar kyat',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MNT','Mongolian tugrik',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MOP','Macanese pataca',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MRU','Mauritanian ouguiya',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MUR','Mauritian rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MVR','Maldivian rufiyaa',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MWK','Malawian kwacha',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MXN','Mexican peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MXV','Mexican Unidad de Inversion (UDI)',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MYR','Malaysian ringgit',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('MZN','Mozambican metical',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NAD','Namibian dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NGN','Nigerian naira',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NIO','Nicaraguan cordoba',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NOK','Norwegian krone',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NPR','Nepalese rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('NZD','New Zealand dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('OMR','Omani rial',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PAB','Panamanian balboa',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PEN','Peruvian sol',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PGK','Papua New Guinean kina',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PHP','Philippine peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PKR','Pakistani rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PLN','Polish zloty',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('PYG','Paraguayan guaraní',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('QAR','Qatari riyal',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('RON','Romanian leu',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('RSD','Serbian dinar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('RUB','Russian ruble',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('RWF','Rwandan franc',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SAR','Saudi riyal',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SBD','Solomon Islands dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SCR','Seychelles rupee',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SDG','Sudanese pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SEK','Swedish krona',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SGD','Singapore dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SHP','Saint Helena pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SLL','Sierra Leonean leone',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SOS','Somali shilling',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SRD','Surinamese dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SSP','South Sudanese pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('STN','Sao Tome and Principe dobra',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SVC','Salvadoran colon',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SYP','Syrian pound',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('SZL','Swazi lilangeni',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('THB','Thai baht',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TJS','Tajikistani somoni',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TMT','Turkmenistan manat',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TND','Tunisian dinar',3);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TOP','Tongan paanga',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TRY','Turkish lira',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TTD','Trinidad and Tobago dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TWD','New Taiwan dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('TZS','Tanzanian shilling',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UAH','Ukrainian hryvnia',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UGX','Ugandan shilling',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('USD','United States dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('USN','United States dollar (next day)',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UYI','Uruguay Peso en Unidades Indexadas (URUIURUI)',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UYU','Uruguayan peso',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UYW','Unidad previsional',4);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('UZS','Uzbekistan som',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('VES','Venezuelan bolivar soberano',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('VND','Vietnamese dong',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('VUV','Vanuatu vatu',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('WST','Samoan tala',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XAF','CFA franc BEAC',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XAG','Silver (one troy ounce)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XAU','Gold (one troy ounce)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XBA','European Composite Unit (EURCO)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XBB','European Monetary Unit (E.M.U.-6)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XBC','European Unit of Account 9 (E.U.A.-9)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XBD','European Unit of Account 17 (E.U.A.-17)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XCD','East Caribbean dollar',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XDR','Special drawing rights',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XOF','CFA franc BCEAO',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XPD','Palladium (one troy ounce)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XPF','CFP franc (franc Pacifique)',0);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XPT','Platinum (one troy ounce)',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XSU','SUCRE',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XTS','Code reserved for testing',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XUA','ADB Unit of Account',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('XXX','No currency ',NULL);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('YER','Yemeni rial',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ZAR','South African rand',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ZMW','Zambian kwacha',2);
INSERT INTO depotdb.currency (ccy,`name`,digits) VALUES ('ZWL','Zimbabwean dollar',2);

/*------------------------------------------------------------------------------
 _____               _ _             
/__   \_ __ __ _  __| (_)_ __   __ _ 
  / /\/ '__/ _` |/ _` | | '_ \ / _` |
 / /  | | | (_| | (_| | | | | | (_| |
 \/   |_|  \__,_|\__,_|_|_| |_|\__, |
                               |___/ 
------------------------------------------------------------------------------*/

/* SMALLINT UNSIGNED ranges from 0 to 65k(2^16 -1). should suffice for all 
practical purposes */

/* user */
CREATE TABLE depotdb.user (
     usrid          SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    ,username       VARCHAR(50) NOT NULL
    ,salt           CHAR(128) 
    ,pass           CHAR(128)
    ,lastedit       TIMESTAMP);
    
CREATE UNIQUE INDEX idxusrnm ON depotdb.user(`username`);

/* depot table */
CREATE TABLE depotdb.depot (
     depid           SMALLINT UNSIGNED   AUTO_INCREMENT PRIMARY KEY 
    ,external_id     VARCHAR(30)         NOT NULL
    ,broker          VARCHAR(30)         NOT NULL
    ,ccy             CHAR(3)             NOT NULL
    ,lastedit        TIMESTAMP
    ,FOREIGN KEY fkdepccy (ccy) REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT
    );
CREATE UNIQUE   INDEX idxdepext ON depotdb.depot(broker,external_id);
-- dummy data

/* read and 'write' permissions set by owner */
CREATE TABLE depotdb.permission_level (
     id             TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    ,code           BIT(4)      NOT NULL-- two bits wiggle room      
    ,label          VARCHAR(30) NOT NULL 
);
-- productive
INSERT INTO depotdb.permission_level (code,label) VALUES (b'0001','read');
INSERT INTO depotdb.permission_level (code,label) VALUES (b'0010','write');
INSERT INTO depotdb.permission_level (code,label) VALUES (b'0100','own');

CREATE TABLE depotdb.permission ( 
     depid         SMALLINT UNSIGNED NOT NULL
    ,usrid         SMALLINT UNSIGNED NOT NULL
    ,permission    BIT(4)            NOT NULL
    ,lastedit      TIMESTAMP
    ,FOREIGN KEY fkownusr (usrid) REFERENCES depotdb.user(usrid) ON DELETE CASCADE
    ,FOREIGN KEY fkowndep (depid) REFERENCES depotdb.depot(depid) ON DELETE CASCADE
);
CREATE UNIQUE INDEX idxpermunq ON depotdb.permission(usrid,depid);
-- dummy

/* instrument table */
CREATE TABLE depotdb.instrument (
     insid          SMALLINT UNSIGNED   AUTO_INCREMENT PRIMARY KEY
    ,isin           CHAR(12)            NOT NULL
    ,figi           CHAR(12)
    ,name           VARCHAR(100)        NOT NULL
    ,ccy            CHAR(3)             NOT NULL -- accounting currency, payment ccy
    ,lastedit       TIMESTAMP
  ,FOREIGN KEY fkinsccy (ccy) REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT   
);
CREATE UNIQUE   INDEX idxinsisn ON depotdb.instrument(isin);
CREATE          INDEX idxinsnam ON depotdb.instrument(name);
-- dummy 

CREATE TABLE depotdb.eventlog (
     evtid          MEDIUMINT UNSIGNED  NOT NULL
    ,depid          SMALLINT UNSIGNED NOT NULL
    ,eventtype      ENUM('cash','trade')
    ,valuedate      DATE NOT NULL
    ,json           VARCHAR(4000) -- probably we need more here
    ,lastedit       TIMESTAMP
    ,FOREIGN KEY fkelogdep (depid) REFERENCES depotdb.depot(depid) ON DELETE CASCADE
);
CREATE          INDEX idxeventdev ON depotdb.eventlog(depid,eventtype,valuedate);

CREATE TABLE depotdb.cashflow (
    cfid            MEDIUMINT UNSIGNED  AUTO_INCREMENT PRIMARY KEY
   ,depid           SMALLINT UNSIGNED   NOT NULL
   ,insid           SMALLINT UNSIGNED   -- only non-null if dividend payment
   ,cashflowtype    ENUM('dividend','distribution','injection','withdrawal','fee','margin post','margin collect','margin interest')
   ,valuedate       DATE                NOT NULL
   ,amount          DECIMAL(16,6)       NOT NULL
   ,ccy             CHAR(3)
   ,lastedit        TIMESTAMP
   ,FOREIGN KEY fkcfevt (depid)          REFERENCES depotdb.depot(depid)        ON DELETE CASCADE
   ,FOREIGN KEY fkcfins (insid)          REFERENCES depotdb.instrument(insid)   ON DELETE RESTRICT
   ,FOREIGN KEY fkcfcrr (ccy)            REFERENCES depotdb.currency(ccy)       ON DELETE RESTRICT
   
);
CREATE          INDEX idxcfdep   ON depotdb.cashflow(depid,insid,valuedate);
CREATE          INDEX idxcflins  ON depotdb.cashflow(depid,insid,cashflowtype);
CREATE          INDEX idxcfltyp  ON depotdb.cashflow(depid,cashflowtype);

/* trades */
-- trade currency is a function of our depot currency
CREATE TABLE depotdb.trade (
    trdid           MEDIUMINT UNSIGNED  AUTO_INCREMENT PRIMARY KEY
   ,depid           SMALLINT UNSIGNED  NOT NULL
   ,insid           SMALLINT UNSIGNED   NOT NULL
   ,valuedate       DATE                NOT NULL
   ,qty             DECIMAL(16,6)       NOT NULL
   ,prc             DECIMAL(12,6) UNSIGNED NOT NULL
   ,vol             DECIMAL(16,6)       NOT NULL
   ,ccy             CHAR(3)             NOT NULL
   ,qty_allotted    DECIMAL(16,6) UNSIGNED  NOT NULL
   ,lastedit        TIMESTAMP
   ,FOREIGN KEY fktrdep (depid)  REFERENCES depotdb.depot(depid) ON DELETE CASCADE   
   ,FOREIGN KEY fktrdins (insid) REFERENCES depotdb.instrument(insid) ON DELETE RESTRICT
   ,FOREIGN KEY fktrdcrr (ccy)   REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT   
);
CREATE INDEX idxtrddep1  ON depotdb.trade(depid,insid,valuedate);
CREATE INDEX idxtrddep2  ON depotdb.trade(depid,valuedate);

CREATE TABLE depotdb.payment (
     id             MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    ,trdid          MEDIUMINT UNSIGNED  NOT NULL
    ,paymenttype    ENUM('fee','commission','tax','buy','sell','pnl')
    ,amount         DECIMAL(8,2)        NOT NULL -- usually in CURRENCY with 2 decimal places
    ,ccy            CHAR(3)             NOT NULL
    ,FOREIGN KEY fkpaytrd (trdid) REFERENCES depotdb.trade(trdid) ON DELETE CASCADE
    ,FOREIGN KEY fkpayccy (ccy) REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT
);
CREATE INDEX idxpaytrd  ON depotdb.payment(trdid,paymenttype);

/* lot offset. Which SELL trades are allotted to which BUY trades? */
CREATE TABLE depotdb.trade_allotment(
     sell_trdid       MEDIUMINT UNSIGNED NOT NULL
    ,buy_trdid      MEDIUMINT UNSIGNED NOT NULL
    ,qty             DECIMAL(16,6) UNSIGNED NOT NULL
    ,FOREIGN KEY fktalsll (sell_trdid) REFERENCES depotdb.trade(trdid) ON DELETE CASCADE    
    ,FOREIGN KEY fktalbuy (buy_trdid) REFERENCES depotdb.trade(trdid) ON DELETE CASCADE
);

/* position */
-- position currency is a function of our depot currency
CREATE TABLE depotdb.position (
    posid           MEDIUMINT UNSIGNED  NOT NULL AUTO_INCREMENT
   ,depid           SMALLINT UNSIGNED   NOT NULL
   ,insid           SMALLINT UNSIGNED   NOT NULL
   ,valuedate       DATE                NOT NULL 
   ,qty        DECIMAL(16,6)       NOT NULL
   ,vol          DECIMAL(16,6)       NOT NULL
   ,ccy             CHAR(3)             NOT NULL
   ,PRIMARY KEY (posid)
   ,FOREIGN KEY fkposdep (depid) REFERENCES depotdb.depot(depid) ON DELETE CASCADE
   ,FOREIGN KEY fkposins (insid) REFERENCES depotdb.instrument(insid) ON DELETE RESTRICT
);
CREATE UNIQUE   INDEX idxposbky ON depotdb.position(depid,insid,valuedate,ccy);
CREATE          INDEX idxposins ON depotdb.position(insid);
CREATE          INDEX idxposdat ON depotdb.position(valuedate);



/*------------------------------------------------------------------------------
                   _        _        ___      _        
  /\/\   __ _ _ __| | _____| |_     /   \__ _| |_ __ _ 
 /    \ / _` | '__| |/ / _ \ __|   / /\ / _` | __/ _` |
/ /\/\ \ (_| | |  |   <  __/ |_   / /_// (_| | || (_| |
\/    \/\__,_|_|  |_|\_\___|\__| /___,' \__,_|\__\__,_|
------------------------------------------------------------------------------*/

/* vendor */
CREATE TABLE depotdb.vendor (
    venid           TINYINT UNSIGNED   AUTO_INCREMENT PRIMARY KEY
   ,name            VARCHAR(20)         NOT NULL
   ,apikey          VARCHAR(50)         DEFAULT NULL -- to be discussed
   ,lastedit        TIMESTAMP
);
CREATE UNIQUE   INDEX idxvennam ON depotdb.vendor(name);
INSERT INTO depotdb.vendor (name) VALUES ('IEX');

/* market */
CREATE TABLE depotdb.market (
    mktid           TINYINT UNSIGNED    AUTO_INCREMENT PRIMARY KEY
   ,mic             CHAR(4)             NOT NULL 
   ,name            VARCHAR(110)        NOT NULL
   ,countrycode     CHAR(2)             NOT NULL
   ,lastedit        TIMESTAMP
);
CREATE UNIQUE   INDEX idxmktmic ON depotdb.market(mic);
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XSTU','BOERSE STUTTGART','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XDUS','BOERSE DUESSELDORF','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XFRA','DEUTSCHE BOERSE AG','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XBER','BOERSE BERLIN','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XHAN','NIEDERSAECHSISCHE BOERSE ZU HANNOVER','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XETR','XETRA','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XHAM','HANSEATISCHE WERTPAPIERBOERSE HAMBURG','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XMUN','BOERSE MUENCHEN','DE');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XNAS','Nasdaq All Markets','US');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XNMS','Nasdaq NMS Global Market','US');
INSERT INTO depotdb.market (mic,`name`,countrycode) VALUES('XNYS','New York Stock Exchange','US');

CREATE TABLE depotdb.vendor_market (
     venid          TINYINT UNSIGNED NOT NULL
    ,mktid          TINYINT UNSIGNED NOT NULL
    ,code           VARCHAR(8) NOT NULL
    ,PRIMARY KEY (venid,mktid)
    ,FOREIGN KEY fkvmven (venid) REFERENCES depotdb.vendor(venid) ON DELETE RESTRICT
    ,FOREIGN KEY fkvmmkt (mktid) REFERENCES depotdb.market(mktid) ON DELETE RESTRICT
);
CREATE UNIQUE INDEX ixvmunq ON depotdb.vendor_market(venid,mktid);


/* symbol */
CREATE TABLE 
  depotdb.symbol (
    symid           SMALLINT UNSIGNED   AUTO_INCREMENT PRIMARY KEY
   ,insid           SMALLINT UNSIGNED   NOT NULL
   ,venid           TINYINT UNSIGNED    NOT NULL
   ,mktid           TINYINT UNSIGNED    NOT NULL
   ,ccy             CHAR(3)             NOT NULL
   ,symbol          VARCHAR(12)         NOT NULL 
   ,lastedit        TIMESTAMP
   ,FOREIGN KEY fksymins (insid) REFERENCES depotdb.instrument(insid) ON DELETE CASCADE
   ,FOREIGN KEY fksymven (venid) REFERENCES depotdb.vendor(venid) ON DELETE RESTRICT
   ,FOREIGN KEY fksymccy (ccy) REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT
   ,FOREIGN KEY fksymmkt (mktid) REFERENCES depotdb.market(mktid) ON DELETE RESTRICT
);
-- each instrument can only have ONE quote per market / vendor / currency 
CREATE UNIQUE   INDEX idxsymun1 ON depotdb.symbol(insid,venid,mktid,ccy);
-- each vendor must uniquely define its symbols 
CREATE UNIQUE   INDEX idxsymun2 ON depotdb.symbol(venid,symbol); 

/* active symbol, i.e. leading symbol per instrument/ccy combination */
/* CREATE TABLE 
  depotdb.active_symbol (
    insid           SMALLINT UNSIGNED NOT NULL 
   ,ccy             CHAR(3) NOT NULL
   ,symid           SMALLINT UNSIGNED NOT NULL
   ,lastedit        TIMESTAMP
   ,CONSTRAINT PRIMARY KEY (insid,ccy)
   ,FOREIGN KEY fkactsymins (insid) REFERENCES depotdb.instrument(insid) ON DELETE RESTRICT
   ,FOREIGN KEY fkactsymccy (ccy) REFERENCES depotdb.currency(ccy) ON DELETE RESTRICT
   ,FOREIGN KEY fkactsymsym (symid) REFERENCES depotdb.symbol(symid) ON DELETE RESTRICT
);
*/

/* price table stores unadjusted prices  
*/
CREATE TABLE 
  depotdb.price (
    symid           SMALLINT UNSIGNED   NOT NULL
   ,valuedate       DATE                NOT NULL
   ,`open`          DECIMAL(10,4) UNSIGNED               
   ,high            DECIMAL(10,4) UNSIGNED               
   ,low             DECIMAL(10,4) UNSIGNED               
   ,`close`         DECIMAL(10,4) UNSIGNED               
   ,volume          INT           UNSIGNED               
   ,PRIMARY KEY (symid,valuedate)
   ,FOREIGN KEY fkmktsym (symid) REFERENCES depotdb.symbol(symid) ON DELETE RESTRICT
);
CREATE          INDEX idxmktdat ON depotdb.price(valuedate);

/* price table for ETL*/
CREATE TABLE 
  depotdb.etl_price (
    vendor          VARCHAR(20) NOT NULL
   ,symbol          VARCHAR(12) NOT NULL
   ,valuedate       DATE NOT NULL
   ,`open`          DECIMAL(10,4) UNSIGNED               
   ,high            DECIMAL(10,4) UNSIGNED               
   ,low             DECIMAL(10,4) UNSIGNED               
   ,`close`         DECIMAL(10,4) UNSIGNED               
   ,volume          INT           UNSIGNED               
   ,PRIMARY KEY (vendor,symbol,valuedate)
);

/* adj_factor = CAST((1-dividend/close) * split_factor */
CREATE OR REPLACE TABLE 
  depotdb.price_adjustment (
    id              MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
   ,symid           SMALLINT UNSIGNED   NOT NULL
   ,valuedate       DATE                NOT NULL
   ,`close`         DECIMAL(10,4) UNSIGNED NOT NULL
   ,dividend        DECIMAL(8,2)   NOT NULL DEFAULT 0.0
   ,split_factor    DECIMAL(16,12) NOT NULL DEFAULT 1.0     
   ,adj_factor      DECIMAL(16,12) NOT NULL DEFAULT (CAST((1-dividend/`close`) * split_factor AS DECIMAL(16,12)))
   ,FOREIGN KEY fkpasymid (symid) REFERENCES depotdb.symbol(symid) ON DELETE RESTRICT
);
CREATE UNIQUE INDEX idxprice_adjustmentunq ON depotdb.price_adjustment(symid,valuedate);

CREATE OR REPLACE TABLE 
  depotdb.etl_price_adjustment (
    vendor          VARCHAR(20) NOT NULL
   ,symbol          VARCHAR(12) NOT NULL
   ,valuedate       DATE                NOT NULL
   ,`close`         DECIMAL(10,4) UNSIGNED NOT NULL
   ,dividend        DECIMAL(8,2)   NOT NULL DEFAULT 0.0
   ,split_factor    DECIMAL(16,12) NOT NULL DEFAULT 1.0     
);

CREATE TABLE depotdb.forex_symbol (
     fxsymid          SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY
    ,base           CHAR(3) NOT NULL
    ,quote          CHAR(3) NOT NULL
    ,venid          TINYINT UNSIGNED NOT NULL
    ,symbol         VARCHAR(20)
    ,FOREIGN KEY fkcsmbas (base) REFERENCES depotdb.currency (ccy) ON DELETE RESTRICT
    ,FOREIGN KEY fkcsmqot (quote) REFERENCES depotdb.currency (ccy) ON DELETE RESTRICT
    ,FOREIGN KEY fkcsmven (venid) REFERENCES depotdb.vendor (venid) ON DELETE RESTRICT
);
CREATE UNIQUE   INDEX idxfxsbqt ON depotdb.forex_symbol (base,quote,venid,symbol);

/* price table */
CREATE TABLE 
  depotdb.forex_price (
    fxsymid         SMALLINT UNSIGNED   NOT NULL
   ,valuedate       DATE                NOT NULL
   ,`close`         DECIMAL(12,6) UNSIGNED 
   ,PRIMARY KEY (fxsymid,valuedate)
   ,FOREIGN KEY fkccyprc (fxsymid) REFERENCES depotdb.forex_symbol(fxsymid) ON DELETE RESTRICT
);
CREATE          INDEX idxfxpdat ON depotdb.forex_price(valuedate);


/*  DEPOTVERWALTUNG:
        - user anlegen
        - depot anlegen, user zuweisen
        - user pro/demoten
        - event via JSON
*/
/* [TODO][Hier] suchen */
/*


/* 
  Security: admin user creates scripts etc.
            grant access to each new user to execute a subset of scripts
            adding a depot should grant its rights to its user + admin
*/

/*------------------------------------------------------------------------------
    ___                 _   
   /   \___ _ __   ___ | |_ 
  / /\ / _ \ '_ \ / _ \| __|
 / /_//  __/ |_) | (_) | |_ 
/___,' \___| .__/ \___/ \__|
           |_|              
              _       _                                  
  /\/\   __ _(_)_ __ | |_ ___ _ __   __ _ _ __   ___ ___ 
 /    \ / _` | | '_ \| __/ _ \ '_ \ / _` | '_ \ / __/ _ \
/ /\/\ \ (_| | | | | | ||  __/ | | | (_| | | | | (_|  __/
\/    \/\__,_|_|_| |_|\__\___|_| |_|\__,_|_| |_|\___\___|
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
 add a user 
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.add_user (IN in_name VARCHAR(50),IN in_password VARCHAR(64))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Add a new user to the depot system'
`proc_body`:
BEGIN
    DECLARE l_usrid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_salt CHAR(128) DEFAULT NULL;
    DECLARE l_pass CHAR(128) DEFAULT NULL;
    SELECT usrid INTO l_usrid 
      FROM depotdb.user 
     WHERE in_name LIKE `username`;
    
    IF l_usrid IS NOT NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User already exists.';
        LEAVE `proc_body`;
    END IF;
    
    IF LENGTH(in_password) < 8 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Password length < 8.';
        LEAVE `proc_body`;
    END IF;
    
    SET l_salt = SHA2(RAND(),512);
    SET l_pass = SHA2(CONCAT(in_password,l_salt),512);
    INSERT INTO depotdb.user (`username`,salt,pass) VALUES (in_name,l_salt,l_pass);
    SELECT LAST_INSERT_ID();
END;
//
DELIMITER ;

/*------------------------------------------------------------------------------
 authenticate user
------------------------------------------------------------------------------*/

DELIMITER //
CREATE OR REPLACE 
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.authenticate_user(IN in_username VARCHAR(30),IN in_password VARCHAR(64))
    SQL SECURITY DEFINER
    DETERMINISTIC
    READS SQL DATA
    COMMENT 'authenticate user against database'
`proc_body`:
BEGIN
    DECLARE l_username VARCHAR(30) DEFAULT NULL;
    DECLARE l_salt CHAR(128) DEFAULT NULL;
    DECLARE l_pass CHAR(128) DEFAULT NULL;

    SELECT username,salt,pass INTO l_username, l_salt ,l_pass 
    FROM depotdb.`user` WHERE username = in_username LIMIT 1;
    IF l_username IS NULL THEN
        SET @ACTIVE_USER= NULL;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Bad user.';
        LEAVE `proc_body`;
    END IF;
    
    IF SHA2(CONCAT(in_password,l_salt),512) <> l_pass THEN
        SET @ACTIVE_USER= NULL;
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Bad user.';
        LEAVE `proc_body`;
    END IF;

    SET @ACTIVE_USER = l_username; -- todo: saubere implementierung
    SET @ACTIVE_HASH = SHA2(CONCAT(in_password,l_salt),512);
END;
//
DELIMITER ;

/*
Check whether user+hash are currently set active user.
*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER
FUNCTION depotdb.is_authenticated(username VARCHAR(30), hash CHAR(128))
RETURNS BOOLEAN
DETERMINISTIC
SQL SECURITY DEFINER -- revisit
COMMENT 'Returns true if the user is (currently) authenticated'
BEGIN
    IF username = @ACTIVE_USER AND hash = @ACTIVE_HASH THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
//
DELIMITER ;


/*------------------------------------------------------------------------------
 add a depot with rights to the user and to the admin
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.add_depot (
         IN in_usr VARCHAR(50)
        ,IN in_broker VARCHAR(30)
        ,IN in_external_id VARCHAR(30)
        ,IN in_ccy CHAR(3))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Add a new depot to depotdb'
`proc_body`:
BEGIN
    DECLARE l_usrid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_depid SMALLINT UNSIGNED DEFAULT NULL;
    
    SELECT usrid INTO l_usrid FROM depotdb.`user` WHERE  in_usr = username;
    IF l_usrid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown user.';
        LEAVE `proc_body`;
    END IF;

    SELECT depid INTO l_depid FROM depotdb.depot 
    WHERE broker = in_broker AND external_id = in_external_id;
    IF l_depid IS NOT NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Depot already exists.';
        LEAVE `proc_body`;
    END IF;
        
        
    INSERT INTO depotdb.depot(broker, external_id,ccy) 
        VALUES (in_broker,in_external_id,in_ccy);
    SET l_depid = LAST_INSERT_ID();

    INSERT INTO depotdb.permission(depid,usrid,permission) 
       VALUES (l_depid,l_usrid,b'0111');
    
    SELECT l_depid;
END;
//
DELIMITER ;


/*------------------------------------------------------------------------------
 add a user to a depot's permissions
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.grant_depot_permission (
         IN in_broker VARCHAR(30)
        ,IN in_external_id VARCHAR(30)
        ,IN in_to_user VARCHAR(50)
        ,IN in_permlevel ENUM('revoke','read','write')) -- todo: bitcode
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Add a user to a depot''s owner list'
`proc_body`:
BEGIN
    DECLARE l_from_usrid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_to_usrid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_depid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_perm  BIT(4);


    SELECT depot_owner_id, depot_id INTO l_from_usrid, l_depid 
    FROM depotdb.v_ownership o 
    INNER JOIN depotdb.v_authenticated_usrid u ON o.depot_owner_id = u.usrid
    WHERE o.depot_broker = in_broker
      AND o.depot_external_id = in_external_id; 

    IF l_from_usrid IS NULL OR l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No permission.';
        LEAVE `proc_body`;
    END IF;
    
    SELECT u.usrid INTO l_to_usrid
    FROM       depotdb.`user` u 
    WHERE u.username = in_to_user;
    IF l_to_usrid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User unkown.';
        LEAVE `proc_body`;
    END IF;
    
    IF l_from_usrid = l_to_usrid THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Grant to self not allowed.';
        LEAVE `proc_body`;
    END IF;
    
    CASE in_permlevel
        WHEN 'revoke' THEN
            DELETE p FROM depotdb.permission p WHERE p.depid = l_depid AND p.usrid = l_to_usrid;
        WHEN 'read' THEN 
            INSERT INTO depotdb.permission (depid,usrid,permission) VALUES (l_depid, l_to_usrid, b'0001') ON DUPLICATE KEY UPDATE permission = b'0001';
        WHEN 'write' THEN
            INSERT INTO depotdb.permission (depid,usrid,permission) VALUES (l_depid, l_to_usrid, b'0011') ON DUPLICATE KEY UPDATE permission = b'0011';
    END CASE;
END;
//
DELIMITER ;

/*------------------------------------------------------------------------------
  _____           _                                   _   
  \_   \_ __  ___| |_ _ __ _   _ _ __ ___   ___ _ __ | |_ 
   / /\/ '_ \/ __| __| '__| | | | '_ ` _ \ / _ \ '_ \| __|
/\/ /_ | | | \__ \ |_| |  | |_| | | | | | |  __/ | | | |_ 
\____/ |_| |_|___/\__|_|   \__,_|_| |_| |_|\___|_| |_|\__|
              _       _                                  
  /\/\   __ _(_)_ __ | |_ ___ _ __   __ _ _ __   ___ ___ 
 /    \ / _` | | '_ \| __/ _ \ '_ \ / _` | '_ \ / __/ _ \
/ /\/\ \ (_| | | | | | ||  __/ | | | (_| | | | | (_|  __/
\/    \/\__,_|_|_| |_|\__\___|_| |_|\__,_|_| |_|\___\___|
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
 add an instrument
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.add_instrument (
         IN in_isin CHAR(12)
        ,IN in_name VARCHAR(100)
        ,IN in_ccy CHAR(3))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Add a new instrument to the list'
`proc_body`:
BEGIN
    DECLARE l_insid SMALLINT UNSIGNED DEFAULT NULL;
    IF CHAR_LENGTH(in_isin) <> 12 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid ISIN';
        LEAVE `proc_body`;
    END IF;
    
    SELECT in_isin REGEXP '[A-Z]{2}[A-Z0-9]{9}[0-9]' INTO @isinchk;
    IF NOT @isinchk THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid ISIN';
        LEAVE `proc_body`;
    END IF;
    
    IF CHAR_LENGTH(in_name) = 0 OR CHAR_LENGTH(in_name) > 100 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Inst name <> [1,100] symbols';
        LEAVE `proc_body`;
    END IF;
    
    SELECT insid INTO l_insid FROM depotdb.instrument WHERE isin = in_isin;
    IF l_insid IS NOT NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Instrument exists';
        LEAVE `proc_body`;
    END IF;
        
    
    INSERT INTO depotdb.instrument(isin,name,ccy) VALUES (in_isin,in_name,in_ccy);
END;
//
DELIMITER ;

/*------------------------------------------------------------------------------
 _____               _ _               __           _       _       
/__   \_ __ __ _  __| (_)_ __   __ _  / _\ ___ _ __(_)_ __ | |_ ___ 
  / /\/ '__/ _` |/ _` | | '_ \ / _` | \ \ / __| '__| | '_ \| __/ __|
 / /  | | | (_| | (_| | | | | | (_| | _\ \ (__| |  | | |_) | |_\__ \
 \/   |_|  \__,_|\__,_|_|_| |_|\__, | \__/\___|_|  |_| .__/ \__|___/
                               |___/                 |_|            

Run as depotdb admin
------------------------------------------------------------------------------*/

/* 
any ticket must contain some means to identify the user and the depot, as well 
as a value date. For trades, we require the instrument, qty,prc and currency, 
for a cashflow we need at least the amount. valid example tickets

-- margin call
{"username"  :"myuser", 
 "valuedate" : "2021-04-21",
 "depot"     : {"broker"        : "bank",
                "external_id" : "e1"},
 "cashflow"  :[{"type":"margin post","amount":1000,"ccy":"EUR"}]"}

-- dividend with cashflow as array
{"username"  : "myuser", 
 "valuedate" : "2021-04-21",
 "depot"     : {"broker"        : "bank",
                "external_id" : "e1"},
 "isin"      : "DE1234567890",
 "cashflow"  : [{"type":"dividend","amount":1000,"ccy":"EUR"}]"}


-- trade with payments as array
{"username"  : "myuser", 
 "valuedate" : "2021-04-21",
 "depot"     : {"broker"        : "bank",
                "external_id" : "e1"},
 "isin"      : "DE1234567890",
 "trade"     : {"qty":50,"prc":200.20,"ccy":"EUR"},
 "payment"   : [{"type":"fee","amount":10,"ccy":"EUR"},
                {"type":"fee","amount":10,"ccy":"USD"}]}


*/


/*------------------------------------------------------------------------------
Verbose ticket check, returns TRUE if valid ticket.
to be implemented:
- check whether paymenttype is in expected range
- check whether cashflowtype is in expected range
-  
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER
FUNCTION depotdb.is_valid_json_ticket_verbose(in_json VARCHAR(4000))
RETURNS BOOLEAN
DETERMINISTIC
COMMENT 'Validates a JSON event ticket, expecting it to contain valuedate, 
         ticket type etc. Returns verbose SQL messages. At the moment, we
         only support tickets for a single value date.'
BEGIN
    DECLARE outvar BOOLEAN DEFAULT FALSE;
    DECLARE l_depid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE i TINYINT UNSIGNED DEFAULT 0;
`validate_body`:
    BEGIN
    -- test for minimum required parameters ... with no output to the user ,tho
    IF NOT JSON_VALID(in_json) THEN 
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'invalid json';
        LEAVE `validate_body`; 
    END IF;
    
    -- the ticket must either trade or cashflow ....
    IF JSON_CONTAINS_PATH(in_json,'all','$.cashflow','$.trade') THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'must be "trade":{"qty":qty,"prc":prc,"ccy":"ccy"} or "cashflow":{"cashflowtype":[]}';
        LEAVE `validate_body`;
    END IF;
    -- but not both!
    IF NOT JSON_CONTAINS_PATH(in_json,'one','$.cashflow','$.trade') THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'must be "trade":{"qty":qty,"prc":prc,"ccy":"ccy"} or "cashflow":{"cashflowtype":[]}';
        LEAVE `validate_body`;
    END IF;
    
    -- ...and a depot, of course.
    IF NOT (JSON_CONTAINS_PATH(in_json,'all','$.depot.broker'
                                        ,'$.depot.external_id'))  THEN 
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '"depot":{"broker":"broker",
                            "external_id":"external_id"} missing';
        LEAVE `validate_body`; 
    END IF;
  
    /*SELECT d.depid INTO  l_depid 
    FROM       depotdb.permission p 
    INNER JOIN depotdb.depot d ON p.depid = d.depid  
    WHERE p.permission & b'0010' 
      AND d.external_id = JSON_VALUE(in_json,'$.depot.external_id')
      AND d.broker= JSON_VALUE(in_json,'$.depot.broker')
      AND p.usrid = @ACTIVE_USER;    
      
    IF l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Depot denied.';
        LEAVE `validate_body`;
    END IF; 
    */
    -- we always need a value date!
    IF NOT JSON_EXISTS(in_json,'$.valuedate') THEN 
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '"valuedate":"yyyy-mm-dd" missing';
        LEAVE `validate_body`; 
    END IF;
    
    IF JSON_EXISTS(in_json,'$.isin') THEN
        IF CHAR_LENGTH(JSON_VALUE(in_json,'$.isin')) <> 12 THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Invalid ISIN';
            LEAVE `validate_body`;
        END IF;
        SELECT JSON_VALUE(in_json,'$.isin') REGEXP '[A-Z]{2}[A-Z0-9]{9}[0-9]' INTO @isinchk;
        IF NOT @isinchk THEN
            SIGNAL SQLSTATE '45000' 
            SET MESSAGE_TEXT = 'Invalid ISIN';
            LEAVE `validate_body`;
        END IF;
    END IF;
 
    -- let's do all the checks IF it is a trade:
    IF JSON_EXISTS(in_json,'$.trade') THEN
        IF NOT JSON_EXISTS(in_json,'$.isin') THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '"isin":"isin" missing';
        LEAVE `validate_body`;
        END IF;
        -- does it contain qty, prc, ccy?
        IF NOT JSON_CONTAINS_PATH(in_json,'all',
                        '$.trade.qty','$.trade.prc','$.trade.ccy') THEN 
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = '"trade":{"qty":qty,"prc":prc,"ccy":"ccy"} missing';
        LEAVE `validate_body`; 
        END IF;
        -- does it contain payment? if yes, iterate over all payments and validate 
        -- the necessary entries type,amount,ccy
        IF JSON_EXISTS(in_json,'$.payment') THEN
        
            -- to be implemented: check whether paymenttype is valid
            -- SELECT SUBSTRING(COLUMN_TYPE,5) INTO @x FROM information_schema.COLUMNS
            -- WHERE TABLE_CHEMA='depotdb' AND TABLE_NAME='payment' AND COLUMN_NAME='paymenttype';
            
            SET i = 0;
            WHILE i < JSON_LENGTH(in_json,'$.payment') DO
                IF NOT JSON_CONTAINS_PATH(JSON_EXTRACT(in_json,CONCAT('$.payment[',i,']')),'all','$.type','$.amount','$.ccy') THEN
                    SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = '"payment":[{"type":"type","ccy":"ccy","amount":amount},...] incorrect';
                END IF;
                
                -- to be implemented: check whether type is valid
                -- SELECT INSTR(@x,PAYMENT_TYPE_i) INTO @y;
                -- IF @y == 0 THEN ...
                
                SELECT i + 1 INTO i;
            END WHILE;
        END IF;
    END IF;
    
    -- if this is a cashflow, we should support dividends
    IF JSON_EXISTS(in_json,'$.cashflow') THEN
        -- to be implemented: check whether cashflowtype is valid, see syntax for paymenttype above.
        SET i = 0;
        WHILE i < JSON_LENGTH(in_json,'$.cashflow') DO
            IF NOT JSON_CONTAINS_PATH(JSON_EXTRACT(in_json,CONCAT('$.cashflow[',i,']')),'all','$.type','$.amount','$.ccy') THEN
                    SIGNAL SQLSTATE '45000'
                    SET MESSAGE_TEXT = '"cashflow":[{"type":"type","ccy":"ccy","amount":amount},...] incorrect';
            END IF;
            SELECT i + 1 INTO i;
        END WHILE;
    END IF;
    -- result output  
    SET outvar = TRUE;
    END;  
    
    RETURN outvar;
END;
//
DELIMITER ; 


/*------------------------------------------------------------------------------
check for valid ticket - non verbosely
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER
FUNCTION depotdb.is_valid_json_ticket(in_json VARCHAR(4000))
RETURNS BOOLEAN
DETERMINISTIC
COMMENT 'Validates a JSON ticket, expecting it to contain valuedate, 
         trade details etc. Returns no SQL message.'
BEGIN
    DECLARE outvar BOOLEAN DEFAULT FALSE;
    DECLARE t1 BOOLEAN DEFAULT FALSE;
    DECLARE t2 BOOLEAN DEFAULT FALSE;
    `validate_body`:
    BEGIN
    
        SET t1 = depotdb.is_valid_json_trade_ticket(in_json);
        SET t2 = depotdb.is_valid_json_cashflow_ticket(in_json);
        
        IF t1 XOR t2 THEN
            SET outvar = TRUE;
        END IF;
    END;  
    RETURN outvar;
END;
//
DELIMITER ; 


/*------------------------------------------------------------------------------
 check for a trade ticket -> non verbose
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER
FUNCTION depotdb.is_valid_json_trade_ticket(in_json VARCHAR(4000))
RETURNS BOOLEAN
DETERMINISTIC
COMMENT 'Validates a JSON trade ticket, expecting it to contain valuedate, 
         trade details etc. Returns no SQL message.'
BEGIN
    DECLARE outvar BOOLEAN DEFAULT FALSE;
    DECLARE i TINYINT UNSIGNED DEFAULT 0;
  
`validate_body`:
    BEGIN
        IF NOT JSON_VALID(in_json) THEN 
            LEAVE `validate_body`;                
        END IF;
        IF NOT JSON_EXISTS(in_json,'$.trade') THEN
            LEAVE `validate_body`;
        END IF;
        IF NOT JSON_EXISTS(in_json,'$.valuedate') THEN 
            LEAVE `validate_body`; 
        END IF;

        IF NOT (JSON_CONTAINS_PATH(in_json,'all','$.depot.broker'
                                         ,'$.depot.external_id'))  THEN 
            LEAVE `validate_body`; 
        END IF;

        IF NOT JSON_EXISTS(in_json,'$.isin') THEN
            LEAVE `validate_body`;
        END IF;
        
        IF NOT JSON_CONTAINS_PATH(in_json,'all',
                        '$.trade.qty','$.trade.prc','$.trade.ccy') THEN 
            LEAVE `validate_body`; 
        END IF;
        
        IF JSON_EXISTS(in_json,'$.payment') THEN
            SET i = 0;
            WHILE i < JSON_LENGTH(in_json,'$.payment') DO
                IF NOT JSON_CONTAINS_PATH(
                    JSON_EXTRACT(in_json,
                    CONCAT('$.payment[',i,']')),'all','$.type','$.amount','$.ccy') THEN
                    LEAVE `validate_body`;
                END IF;
                SELECT i + 1 INTO i;
            END WHILE;
        END IF;
        -- result output  
        SET outvar = TRUE;
    END; 
    
    RETURN outvar;
END;
//
DELIMITER ; 

/*------------------------------------------------------------------------------
 check for a cashflow ticket -> non-verbose
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER
FUNCTION depotdb.is_valid_json_cashflow_ticket(in_json VARCHAR(4000))
RETURNS BOOLEAN
DETERMINISTIC
COMMENT 'Validates a JSON cashflow ticket, expecting it to contain valuedate, 
         trade details etc. Returns no SQL message.'
BEGIN
    DECLARE outvar BOOLEAN DEFAULT FALSE;
    DECLARE i TINYINT UNSIGNED DEFAULT 0;
  
    `validate_body`:
    BEGIN
        IF NOT JSON_VALID(in_json) THEN 
            LEAVE `validate_body`;                
        END IF;
        IF NOT JSON_EXISTS(in_json,'$.cashflow') THEN
            LEAVE `validate_body`;
        END IF;
        IF NOT JSON_EXISTS(in_json,'$.valuedate') THEN 
            LEAVE `validate_body`; 
        END IF;

        IF NOT (JSON_CONTAINS_PATH(in_json,'all','$.depot.broker'
                                         ,'$.depot.external_id'))  THEN 
            LEAVE `validate_body`; 
        END IF;

        SET i = 0;
        WHILE i < JSON_LENGTH(in_json,'$.cashflow') DO
            IF NOT JSON_CONTAINS_PATH(JSON_EXTRACT(in_json,CONCAT('$.cashflow[',i,']')),'all','$.type','$.amount','$.ccy') THEN
                    LEAVE `validate_body`;
            END IF;
            IF JSON_VALUE(in_json,CONCAT('$.cashflow[',i,'].type')) = 'dividend' AND NOT JSON_EXISTS(in_json,'$.isin') THEN
                    LEAVE `validate_body`;
            END IF;
            SELECT i + 1 INTO i;
        END WHILE;
      -- result output
      SET outvar = TRUE;
    END;  
    
    RETURN outvar;
END;
//
DELIMITER ; 


/*------------------------------------------------------------------------------
 _       _                _                      
| | ___ | |_  __   _____ | |_   _ _ __ ___   ___ 
| |/ _ \| __| \ \ / / _ \| | | | | '_ ` _ \ / _ \
| | (_) | |_   \ V / (_) | | |_| | | | | | |  __/
|_|\___/ \__|   \_/ \___/|_|\__,_|_| |_| |_|\___|
* function returning the invested volume amount for a given lot qty
------------------------------------------------------------------------------*/


/*------------------------------------------------------------------------------
What is the invested volume for a (hypothetic) sell size?
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER -- 'depotdb_admin'@'localhost' 
FUNCTION depotdb.get_lot_volume(
     in_depid       SMALLINT UNSIGNED 
    ,in_insid       SMALLINT UNSIGNED 
    ,in_qty         DECIMAL(16,6)
    ,in_ccy         CHAR(3)    )
  RETURNS           DECIMAL(16,6)
  SQL SECURITY DEFINER
  DETERMINISTIC
  READS SQL DATA
  COMMENT 'FIFO volume for a depot/instrument sales quantity.
           Does not consider the trade currency'
BEGIN
    DECLARE out_volume DOUBLE;
    DECLARE residual_quantity DOUBLE;
    DECLARE exceeded INT DEFAULT FALSE;
    DECLARE v_qty DOUBLE;
    DECLARE v_prc DOUBLE;

    DECLARE crs CURSOR FOR               -- this cursor is used to 
        SELECT                           -- get the result set of those
            t.qty_allotted, t.prc        -- BUY trades that have not been
            FROM                         -- allotted. 
            depotdb.trade t              -- We will walk this cursor
        WHERE                            -- until the in_quantity is
            t.depid = in_depid           -- met.
        AND t.insid = in_insid           -- 
        AND t.ccy   = in_ccy             --
        AND t.qty_allotted > 0           --
        ORDER BY t.valuedate ASC;        --

    /* if we ask for more qty than can be alloted, raise an error */
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET exceeded = TRUE;

    /* the out volume keeps track of the invested volume */
    SET out_volume = 0.0;                 

    /* the residual qty keeps track of remaining units to be sold */
    SET residual_quantity = in_qty;  

    OPEN crs;
    read_loop: LOOP
        FETCH crs INTO v_qty, v_prc;
        /* If we ask for more than what's available, throw an error*/
        IF exceeded THEN                 
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Excess qty cannot be allotted', 
            MYSQL_ERRNO = 1644;
        END IF;

        IF residual_quantity <= 0 THEN   
            LEAVE read_loop;             
        ELSEIF residual_quantity > v_qty THEN
            SET residual_quantity = residual_quantity - v_qty;
            SET out_volume = out_volume + v_qty * v_prc;
        ELSE
            SET out_volume = out_volume + residual_quantity * v_prc;
            LEAVE read_loop;
        END IF;
    END LOOP;
    CLOSE crs;  
    RETURN out_volume;
END;
//
DELIMITER ;  

/*------------------------------------------------------------------------------
 book ticket to either cashflow or trade
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER  
    PROCEDURE depotdb.book_ticket(IN in_json VARCHAR(4000))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Books a trade or cashflow event from JSON.'
`proc_body`:
BEGIN
    DECLARE t1 BOOLEAN DEFAULT FALSE;
    DECLARE t2 BOOLEAN DEFAULT FALSE;
     
    SET t1 = depotdb.is_valid_json_trade_ticket(in_json);
    SET t2 = depotdb.is_valid_json_cashflow_ticket(in_json);

    IF t2 AND NOT t1 THEN 
        CALL depotdb.book_cashflow(in_json);
    END IF;
    
    IF t1 AND NOT t2 THEN
        CALL depotdb.book_trade(in_json);
    END IF;
END; //
DELIMITER ;


/*------------------------------------------------------------------------------
 book a trade type ticket. should be called by book_ticket.
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER  
    PROCEDURE depotdb.book_trade(IN in_json VARCHAR(4000))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Books a trade event from JSON. To be called by book_ticket, only.'
`proc_body`:
BEGIN
    DECLARE l_insid     SMALLINT DEFAULT NULL;
    DECLARE l_depid     SMALLINT DEFAULT NULL;
    DECLARE l_qty       DECIMAL(16,6);
    DECLARE l_prc       DECIMAL(12,6);
    DECLARE l_qtylot    DECIMAL(16,6);
    DECLARE lotvolume   DECIMAL(16,6);
    DECLARE l_vdate     DATE;
    DECLARE l_vol       DECIMAL(16,6);
    DECLARE l_ccy       CHAR(3);
    DECLARE l_trdid     SMALLINT DEFAULT NULL;
    DECLARE i           TINYINT DEFAULT NULL;
    DECLARE l_posvol    DECIMAl(16,6);
    DECLARE l_posqty    DECIMAL(16,6);
    DECLARE errno       INT;
  
    SELECT depot_id INTO l_depid 
    FROM depotdb.v_authenticated_user_permissions v
    WHERE v.permission & b'0010' 
      AND v.depot_broker = JSON_VALUE(in_json,'$.depot.broker')
      AND v.depot_external_id = JSON_VALUE(in_json,'$.depot.external_id') 
    LIMIT 1;    

    IF l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Depot denied.';
        LEAVE `proc_body`;
    END IF; 

    SELECT insid INTO l_insid FROM depotdb.instrument 
        WHERE isin = JSON_VALUE(in_json,'$.isin'); 
    
    IF l_insid IS NULL THEN
        CALL depotdb.add_instrument(JSON_VALUE(in_json,'$.isin')
                                   ,JSON_VALUE(in_json,'$.isin')
                                   ,JSON_VALUE(in_json,'$.trade.ccy'));
                                   
        SELECT insid INTO l_insid 
        FROM depotdb.instrument 
        WHERE isin = JSON_VALUE(in_json,'$.isin');       
    END IF;
    
    -- book only if depot exist
    IF NOT l_depid IS NULL THEN
        SET l_qty = JSON_VALUE(in_json,'$.trade.qty');
        SET l_prc = JSON_VALUE(in_json,'$.trade.prc');
        SET l_ccy = JSON_VALUE(in_json,'$.trade.ccy');
        SET l_vdate = JSON_VALUE(in_json,'$.valuedate');
        SET l_vol =   l_qty * l_prc;
        IF l_qty < 0 THEN 
            SET l_qtylot = 0.0; 
        ELSE
            SET l_qtylot = l_qty;
        END IF;
        
        START TRANSACTION;
        
            IF l_qty < 0 THEN
                SET lotvolume = depotdb.get_lot_volume(l_depid,l_insid,-1 * l_qty,l_ccy);
                IF lotvolume IS NULL THEN
                    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Negative qty.';
                    LEAVE `proc_body`;
                END IF;
            END IF;
            -- book trade, get the trade id
            INSERT INTO depotdb.trade 
                (depid,insid,valuedate,qty,prc,vol,ccy,qty_allotted) 
            VALUES 
                (l_depid,l_insid,l_vdate,l_qty,l_prc,l_vol,l_ccy,l_qtylot);
            SET l_trdid = LAST_INSERT_ID();
            
            -- book the buy / sell cashflow
            -- CALL depotdb.book_payment(l_trdid,IF(l_qty>0,'buy','sell'),-1.0 * l_vol,l_ccy);
            INSERT INTO depotdb.payment(trdid,paymenttype,amount,ccy) 
                VALUES (l_trdid,IF(l_qty>0,'buy','sell'),-1.0 * l_vol,l_ccy);
            
            -- sell trade? If yes, book us some PNL, then deplete available qty
            IF l_qty < 0 THEN -- yep, sell.
                
                -- CALL depotdb.book_payment(l_trdid,'pnl',-1.0 * l_vol - lotvolume, l_ccy);
                INSERT INTO depotdb.payment(trdid,paymenttype,amount,ccy) 
                    VALUES (l_trdid,'pnl',-1.0 * l_vol - lotvolume,l_ccy);
                CALL depotdb.decrease_qty_allotted(l_trdid,l_depid,l_insid,-1.0 * l_qty,l_ccy);
            END IF;
  
            -- add a row to the position table!
            SELECT SUM(t.qty_allotted), SUM(t.qty_allotted * t.prc) 
                INTO l_posqty,l_posvol 
                FROM depotdb.trade t
                WHERE t.depid = l_depid 
                AND t.insid = l_insid 
                AND t.ccy = l_ccy;
                
            INSERT INTO depotdb.position 
                (depid,insid,valuedate,qty,vol,ccy)
            VALUES (l_depid,l_insid,l_vdate,l_posqty,l_posvol,l_ccy)
            ON DUPLICATE KEY UPDATE qty = l_posqty, vol = l_posvol;
    
            -- add payments as required
            IF JSON_EXISTS(in_json,'$.payment') THEN
                SET i = 0;
                WHILE i < JSON_LENGTH(in_json,'$.payment') DO
                    /* CALL depotdb.book_payment(
                        l_trdid
                       ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].type'))
                       ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].amount'))
                       ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].ccy')));
                    */
                    INSERT INTO depotdb.payment(trdid,paymenttype,amount,ccy) 
                    VALUES (
                         l_trdid
                        ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].type'))
                        ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].amount'))
                        ,JSON_VALUE(in_json,CONCAT('$.payment[',i,'].ccy')));
                    SELECT i + 1 INTO i;
                END WHILE;
            END IF;
        COMMIT WORK;
    END IF;
END; //
DELIMITER ;

/*------------------------------------------------------------------------------
 book a cashflow type ticket. should be called by book_ticket.
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER  
    PROCEDURE depotdb.book_cashflow(IN in_json VARCHAR(4000))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Books a cashflow event from JSON. To be called by book_ticket, only.'
`proc_body`:
BEGIN
    DECLARE l_insid     SMALLINT DEFAULT NULL;
    DECLARE l_depid     SMALLINT DEFAULT NULL;
    DECLARE l_vdate     DATE;
    DECLARE l_ccy       CHAR(3);
    DECLARE i           TINYINT DEFAULT NULL;
    DECLARE errno       INT;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET CURRENT DIAGNOSTICS CONDITION 1 errno = MYSQL_ERRNO;
        SELECT errno AS MYSQL_ERROR;
        ROLLBACK; 
    END;
    
    SELECT depot_id INTO l_depid 
    FROM depotdb.v_authenticated_user_permissions v
    WHERE v.permission & b'0010' 
      AND v.depot_broker = JSON_VALUE(in_json,'$.depot.broker')
      AND v.depot_external_id = JSON_VALUE(in_json,'$.depot.external_id') 
    LIMIT 1; 

    IF l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Depot denied.';
        LEAVE `proc_body`;
    END IF; 
    
    IF JSON_EXISTS(in_json,'$.isin') THEN
        SELECT insid INTO l_insid FROM depotdb.instrument 
            WHERE isin = JSON_VALUE(in_json,'$.isin');
        IF l_insid IS NULL THEN
            CALL depotdb.add_instrument(JSON_VALUE(in_json,'$.isin'), JSON_VALUE(in_json,'$.isin'), JSON_VALUE(in_json,'$.trade.ccy'));
            SELECT insid INTO l_insid FROM depotdb.instrument 
            WHERE isin = JSON_VALUE(in_json,'$.isin');       
        END IF;
    END IF;
    
    -- book only if depot exist
    IF NOT l_depid IS NULL THEN
        START TRANSACTION;
            SET i = 0;
            WHILE i < JSON_LENGTH(in_json,'$.cashflow') DO
                INSERT INTO depotdb.cashflow(depid,insid,cashflowtype,valuedate,amount,ccy) 
                VALUES (
                     l_depid
                    ,IF(JSON_VALUE(in_json,CONCAT('$.cashflow[',i,'].type'))='dividend',l_insid,NULL)
                    ,JSON_VALUE(in_json,CONCAT('$.cashflow[',i,'].type'))
                    ,JSON_VALUE(in_json,'$.valuedate')
                    ,JSON_VALUE(in_json,CONCAT('$.cashflow[',i,'].amount'))
                    ,JSON_VALUE(in_json,CONCAT('$.cashflow[',i,'].ccy')));
                SELECT i + 1 INTO i;
            END WHILE;
        COMMIT WORK;
    END IF;
END; //
DELIMITER ;

/*------------------------------------------------------------------------------
 book a single payment
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE
    DEFINER = CURRENT_USER  
    PROCEDURE depotdb.book_payment(
        IN in_trdid MEDIUMINT
       ,IN in_type ENUM('fee','commission','tax','buy','sell','pnl')
       ,IN in_amount DECIMAL(8,2)
       ,IN in_ccy CHAR(3) )
   SQL SECURITY DEFINER
   MODIFIES SQL DATA
   COMMENT 'Book a single payment.'
`proc_body`:
BEGIN
    DECLARE l_depid SMALLINT UNSIGNED DEFAULT NULL;
    -- slow?
    SELECT perm.depot_id INTO l_depid 
    FROM 
    (SELECT t.depid FROM depotdb.trade t WHERE trdid = in_trdid) trade_depot 
    INNER JOIN depotdb.v_authenticated_user_permissions perm 
            ON trade_depot.depid = perm.depot_id
    WHERE perm.permission & b'0010'
    LIMIT 1;
    
    IF l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Depot denied.';
        LEAVE `proc_body`;
    END IF;
    
    INSERT INTO depotdb.payment(trdid,paymenttype,amount,ccy) 
    VALUES (in_trdid,in_type,in_amount,in_ccy);
END; //
DELIMITER ;

/*------------------------------------------------------------------------------
 update the allottable trade information whenever a SELL took place.
------------------------------------------------------------------------------*/
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.decrease_qty_allotted(
     IN in_trdid MEDIUMINT
    ,IN in_depid SMALLINT  
    ,IN in_insid SMALLINT 
    ,IN in_sell_qty DECIMAL(16,6)
    ,IN in_ccy CHAR(3))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Apply FIFO and update allottable historical trades given sales qty.'
proc_body:
BEGIN
    DECLARE exceeded INT DEFAULT FALSE;
    DECLARE v_trdid MEDIUMINT UNSIGNED DEFAULT NULL;
    DECLARE v_lot DECIMAL(16,6); 
    DECLARE l_depid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE sell_qty DECIMAL(16,6);

    DECLARE crs CURSOR FOR 
        SELECT                       -- This is quite like the cursor in
            t.trdid, t.qty_allotted  -- get_lot_volume, but this time we
        FROM                         -- require trdid and quantity, only.
            depotdb.trade t          -- 
        WHERE t.depid = in_depid     --
        AND t.insid = in_insid       --
        AND t.ccy = in_ccy           --
        AND t.qty_allotted > 0       --
        ORDER BY t.valuedate ASC;    --

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET exceeded = TRUE;

    SELECT depot_id INTO l_depid 
    FROM depotdb.v_authenticated_user_permissions v
    WHERE v.permission & b'0010' 
      AND v.depot_id = in_depid LIMIT 1;

    IF l_depid IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No permission.';
        LEAVE proc_body;
    END IF;

    IF in_sell_qty < 0 THEN 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Sell qty must be positive.';
        LEAVE proc_body;
    END IF;                
    SET sell_qty = in_sell_qty;
    OPEN crs;
    read_loop: LOOP
        FETCH crs INTO v_trdid,v_lot;
        IF exceeded THEN                 
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Excess qty cannot be allotted';
        END IF;
        IF sell_qty > v_lot THEN
            SET sell_qty = sell_qty - v_lot;
            UPDATE depotdb.trade t 
                SET t.qty_allotted = 0.0 
                WHERE t.trdid = v_trdid;
            INSERT INTO depotdb.trade_allotment (sell_trdid,buy_trdid,qty) VALUES (in_trdid,v_trdid,v_lot);
        ELSE       
            UPDATE depotdb.trade t 
                SET t.qty_allotted = t.qty_allotted - sell_qty 
                WHERE t.trdid = v_trdid;
            INSERT INTO depotdb.trade_allotment (sell_trdid,buy_trdid,qty) VALUES (in_trdid,v_trdid,sell_qty);
            LEAVE read_loop; 
        END IF;    
    END LOOP;
    CLOSE crs;
END; //
DELIMITER ;



/* add a vendor market mapping */

DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.add_vendor_market(
     IN in_vendor VARCHAR(20) 
    ,IN in_mic CHAR(4)
    ,IN in_mktcode CHAR(4))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Introduce or update a vendor-market mapping'
proc_body:
BEGIN
    DECLARE l_venid TINYINT UNSIGNED DEFAULT NULL; 
    DECLARE l_mktid TINYINT UNSIGNED DEFAULT NULL;

    SELECT venid INTO l_venid FROM depotdb.vendor WHERE `name` = in_vendor;
    SELECT mktid INTO l_mktid FROM depotdb.market WHERE mic = in_mic;

    INSERT INTO depotdb.vendor_market (venid,mktid,code) 
    VALUES (l_venid,l_mktid,in_mktcode) 
    ON DUPLICATE KEY UPDATE code = in_mktcode;
END; //
DELIMITER ;

/* add a symbol */
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.add_or_update_symbol(
     IN in_vendor VARCHAR(20) 
    ,IN in_mic CHAR(4)
    ,IN in_isin CHAR(12)
    ,IN in_ccy CHAR(3)
    ,IN in_symbol VARCHAR(12))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Introduce or update a symbol'
`proc_body`:
BEGIN
    DECLARE l_venid TINYINT UNSIGNED DEFAULT NULL; 
    DECLARE l_mktid TINYINT UNSIGNED DEFAULT NULL;
    DECLARE l_insid SMALLINT UNSIGNED DEFAULT NULL;
    DECLARE l_symid SMALLINT UNSIGNED DEFAULT NULL;
    
    SELECT venid INTO l_venid FROM depotdb.vendor WHERE `name` = in_vendor;
    IF l_venid IS NULL THEN                 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown vendor.';
        LEAVE `proc_body`;
    END IF;
    
    SELECT mktid INTO l_mktid FROM depotdb.market WHERE mic = in_mic;
    IF l_mktid IS NULL THEN                 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown market.';
        LEAVE `proc_body`;
    END IF;
    
    SELECT insid INTO l_insid FROM depotdb.instrument WHERE isin = in_isin;
    IF l_insid IS NULL THEN    
        CALL depotdb.add_instrument(in_isin,in_isin,in_ccy);
        SELECT insid INTO l_insid FROM depotdb.instrument WHERE isin = in_isin;
    END IF;

    INSERT INTO depotdb.symbol (insid,venid,mktid,ccy,symbol) 
    VALUES (l_insid,l_venid,l_mktid,in_ccy,in_symbol)
    ON DUPLICATE KEY UPDATE symbol = in_symbol;
    
    SELECT symid INTO l_symid FROM depotdb.symbol s 
    WHERE s.venid = l_venid AND s.symbol = in_symbol;
    
    INSERT IGNORE INTO depotdb.price_adjustment (symid, valuedate, close, dividend, split_factor, adj_factor) VALUES
    (l_symid, '1999-12-31',0.0,0.0,1.0,1.0);
    
END; //
DELIMITER ;

/* add a price in bulk mode */
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.load_price_from_etl()
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Batch insert data from etl_price to price'
`proc_body`:
BEGIN

    INSERT INTO depotdb.price (
         symid
        ,valuedate
        ,`open`
        ,high
        ,low
        ,`close`
        ,volume)
    SELECT 
         s.symid
        ,e.valuedate
        ,e.`open`
        ,e.high
        ,e.low
        ,e.`close`
        ,e.volume 
    FROM depotdb.etl_price e INNER JOIN depotdb.vendor v ON e.vendor = v.`name` 
    INNER JOIN depotdb.symbol s ON e.`symbol` = s.`symbol` AND v.venid = s.venid;
    
    DELETE FROM etl_price;
END; //
DELIMITER ;

/* update price adjustments where required */
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.load_price_adjustment_from_etl()
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Batch insert data from etl_price_adjustment to price_adjustment'
`proc_body`:
BEGIN

    INSERT IGNORE INTO depotdb.price_adjustment (
         symid
        ,valuedate
        ,`close`
        ,dividend
        ,split_factor)
    SELECT 
         s.symid
        ,e.valuedate
        ,e.`close`
        ,e.dividend
        ,e.split_factor 
    FROM depotdb.etl_price_adjustment e INNER JOIN depotdb.vendor v ON e.vendor = v.`name` 
    INNER JOIN depotdb.symbol s ON e.`symbol` = s.`symbol` AND v.venid = s.venid;
    
    DELETE FROM etl_price_adjustment;
END; //
DELIMITER ;
    
/* add or update a price adjustment point */
DELIMITER //
CREATE OR REPLACE DEFINER = CURRENT_USER 
    PROCEDURE depotdb.add_or_update_price_adjustment(
     IN in_vendor VARCHAR(20)
    ,IN in_symbol VARCHAR(12) 
    ,IN in_valuedate DATE
    ,IN in_close DECIMAL(10,4)
    ,IN in_dividend DECIMAL(8,2)
    ,IN in_split_factor DECIMAL(16,12))
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Add or update historical dividend/split data per symbol'
`proc_body`:
BEGIN
    DECLARE l_symid SMALLINT UNSIGNED DEFAULT NULL;
    SELECT s.symid INTO l_symid 
    FROM depotdb.symbol s 
    INNER JOIN depotdb.vendor v 
    ON s.venid = v.venid 
    WHERE s.symbol = in_symbol AND v.`name` = in_vendor;

    IF l_symid IS NULL THEN                 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Unknown symbol.';
        LEAVE `proc_body`;
    END IF;
    
    INSERT INTO depotdb.price_adjustment (symid,valuedate,`close`,dividend,split_factor) 
    VALUES (l_symid,in_valuedate,in_close,in_dividend,in_split_factor)
    ON DUPLICATE KEY UPDATE `close` = in_close, dividend=in_dividend, split_factor = in_split_factor;
END; //
DELIMITER ;

/*------------------------------------------------------------------------------
   ___      _                  _                   
  / _ \_ __(_) ___ ___  /\   /(_) _____      _____ 
 / /_)/ '__| |/ __/ _ \ \ \ / / |/ _ \ \ /\ / / __|
/ ___/| |  | | (_|  __/  \ V /| |  __/\ V  V /\__ \
\/    |_|  |_|\___\___|   \_/ |_|\___| \_/\_/ |___/
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
latest available symbol
------------------------------------------------------------------------------*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW 
    depotdb.v_last_symbol_data
AS
SELECT 
     v.`name` as vendor
    ,s.symbol
    ,CAST(IFNULL(MAX(p.valuedate),'2001-01-01') AS DATE) AS maxdate 
FROM depotdb.symbol s 
INNER JOIN depotdb.vendor v ON s.venid = v.venid 
LEFT JOIN depotdb.price p ON s.symid = p.symid  
GROUP BY v.`name`, s.symbol;


/*------------------------------------------------------------------------------
adjustment factor history
------------------------------------------------------------------------------*/
CREATE OR REPLACE
    ALGORITHM = UNDEFINED
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW 
    depotdb.v_price_adjustment
AS
SELECT 
     pal.symid
    ,pal.valuedate + INTERVAL 1 DAY AS from_date
    ,MIN(par.valuedate) AS to_date
    ,CAST(EXP(SUM(LOG(par.adj_factor))) AS DECIMAL(16,12)) AS adj_factor 
FROM  depotdb.price_adjustment pal 
INNER JOIN depotdb.price_adjustment par 
        ON pal.symid = par.symid 
       AND pal.valuedate < par.valuedate
GROUP BY pal.symid, pal.valuedate;

/*------------------------------------------------------------------------------
dividend and split adjusted prices for performance evaluation purposes
------------------------------------------------------------------------------*/
CREATE OR REPLACE 
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW
    depotdb.v_price_adjusted
AS
SELECT      
     p.symid
    ,p.valuedate
    ,CAST(p.`open` * IFNULL(pa.adj_factor,1.0) AS DECIMAL(10,4)) AS `open`
    ,CAST(p.high * IFNULL(pa.adj_factor,1.0) AS DECIMAL(10,4)) AS high
    ,CAST(p.low * IFNULL(pa.adj_factor,1.0) AS DECIMAL(10,4)) AS low
    ,CAST(p.`close` * IFNULL(pa.adj_factor,1.0) AS DECIMAL(10,4)) AS `close`
    ,p.volume 
FROM depotdb.price p 
LEFT JOIN depotdb.v_price_adjustment pa 
       ON p.symid = pa.symid 
      AND p.valuedate BETWEEN pa.from_date AND pa.to_date;

/*------------------------------------------------------------------------------
instrument master data and corresponding vendorsymbols
------------------------------------------------------------------------------*/
CREATE OR REPLACE 
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW
    depotdb.v_instrument_symbol
AS
SELECT 
     i.isin
    ,i.`name` 
    ,i.ccy AS ins_ccy
    ,m.mic AS mic
    ,v.`name` AS vendor
    ,s.symbol
    ,s.ccy AS sym_ccy
FROM depotdb.symbol s 
INNER JOIN depotdb.instrument i ON s.insid = i.insid 
INNER JOIN depotdb.vendor v ON s.venid = v.venid 
INNER JOIN depotdb.market m on s.mktid = m.mktid
ORDER BY 1,4,5;




/*------------------------------------------------------------------------------
   ___                    _         _                 
  / _ \___ _ __ _ __ ___ (_)___ ___(_) ___  _ __  ___ 
 / /_)/ _ \ '__| '_ ` _ \| / __/ __| |/ _ \| '_ \/ __|
/ ___/  __/ |  | | | | | | \__ \__ \ | (_) | | | \__ \
\/    \___|_|  |_| |_| |_|_|___/___/_|\___/|_| |_|___/
                                                      
Views for the authenticated user
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
portfolio ownership
------------------------------------------------------------------------------*/
CREATE OR REPLACE 
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
    VIEW depotdb.v_ownership 
    AS
    SELECT 
         u.usrid AS depot_owner_id
        ,u.username AS depot_owner
        ,d.depid AS depot_id
        ,d.broker AS depot_broker
        ,d.external_id AS depot_external_id
        ,d.ccy AS depot_ccy
    FROM depotdb.depot d 
    INNER JOIN depotdb.permission p ON d.depid = p.depid 
    INNER JOIN depotdb.user u ON p.usrid = u.usrid
    WHERE p.permission & b'0100'
WITH CHECK OPTION;


/*------------------------------------------------------------------------------
userid of the authenticated user
------------------------------------------------------------------------------*/
CREATE OR REPLACE 
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
    VIEW depotdb.v_authenticated_usrid
AS
    SELECT u.usrid 
    FROM depotdb.`user` u WHERE depotdb.is_authenticated(username,pass)
WITH CHECK OPTION;

/*------------------------------------------------------------------------------
permissions for the authenticated user
------------------------------------------------------------------------------*/
CREATE OR REPLACE 
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
    VIEW depotdb.v_authenticated_user_permissions 
    AS
    SELECT 
         o.depot_id
        ,o.depot_owner
        ,o.depot_broker
        ,o.depot_external_id
        ,o.depot_ccy
        ,p.permission
    FROM depotdb.permission p INNER JOIN depotdb.v_authenticated_usrid au ON p.usrid = au.usrid 
    INNER JOIN depotdb.v_ownership o ON p.depid = o.depot_id         
WITH CHECK OPTION;

/*------------------------------------------------------------------------------
position views for the authenticated user
------------------------------------------------------------------------------*/
CREATE OR REPLACE
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW 
    depotdb.v_position
AS
SELECT 
     v.depot_owner 
    ,v.depot_broker
    ,v.depot_external_id 
    ,v.depot_ccy
    ,i.isin
    ,i.ccy         AS ins_ccy
    ,p.valuedate   AS pos_valuedate
    ,p.qty         AS pos_qty
    ,p.vol         AS pos_vol
    ,p.ccy         AS pos_ccy 
FROM depotdb.v_authenticated_user_permissions v 
INNER JOIN depotdb.position p ON v.depot_id = p.depid 
INNER JOIN depotdb.instrument i ON p.insid = i.insid
WHERE v.permission & b'0001'
WITH CHECK OPTION;

/*------------------------------------------------------------------------------
Trade views for the authenticated user
------------------------------------------------------------------------------*/
CREATE OR REPLACE
    ALGORITHM = MERGE
    DEFINER = CURRENT_USER
    SQL SECURITY DEFINER
VIEW 
    depotdb.v_trade
AS
SELECT 
     v.depot_owner 
    ,v.depot_broker
    ,v.depot_external_id 
    ,v.depot_ccy
    ,i.isin
    ,i.ccy         AS ins_ccy
    ,t.valuedate   AS trd_valuedate
    ,t.qty         AS trd_qty
    ,t.prc         AS trd_prc
    ,t.vol         AS trd_vol
    ,t.ccy         AS trd_ccy 
FROM depotdb.v_authenticated_user_permissions v 
INNER JOIN depotdb.trade t ON v.depot_id = t.depid 
INNER JOIN depotdb.instrument i ON t.insid = i.insid
WHERE v.permission & b'0001'
WITH CHECK OPTION;


/*------------------------------------------------------------------------------
 _______  _______  _        _______  _______ 
(  ____ )(  ___  )( \      (  ____ \(  ____ \
| (    )|| (   ) || (      | (    \/| (    \/
| (____)|| |   | || |      | (__    | (_____ 
|     __)| |   | || |      |  __)   (_____  )
| (\ (   | |   | || |      | (            ) |
| ) \ \__| (___) || (____/\| (____/\/\____) |
|/   \__/(_______)(_______/(_______/\_______)

Access rights management for app user and data admin
------------------------------------------------------------------------------*/

/* user connecting to the system thru the app_read_user and his limited role */
CREATE OR REPLACE                                                ROLE app_read_user;
GRANT SELECT ON depotdb.v_instrument_symbol                        TO app_read_user;
GRANT SELECT ON depotdb.v_last_symbol_data                         TO app_read_user;
GRANT SELECT ON depotdb.v_position                                 TO app_read_user;
GRANT SELECT ON depotdb.v_price_adjusted                           TO app_read_user;
GRANT SELECT ON depotdb.v_price_adjustment                         TO app_read_user;
GRANT SELECT ON depotdb.v_trade                                    TO app_read_user;
GRANT EXECUTE ON FUNCTION depotdb.is_valid_json_ticket_verbose     TO app_read_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_depot                       TO app_read_user;
GRANT EXECUTE ON PROCEDURE depotdb.authenticate_user               TO app_read_user;
GRANT EXECUTE ON PROCEDURE depotdb.book_ticket                     TO app_read_user;
GRANT EXECUTE ON PROCEDURE depotdb.grant_depot_permission          TO app_read_user;

CREATE OR REPLACE USER 'APP_READ_USER'@'%' IDENTIFIED BY 'temporarypassword';
GRANT USAGE ON depotdb.* TO 'APP_READ_USER'@'%' WITH 
    MAX_USER_CONNECTIONS 10
    MAX_STATEMENT_TIME   60;
GRANT app_read_user TO 'APP_READ_USER'@'%';
SET DEFAULT ROLE app_read_user FOR 'APP_READ_USER'@'%';
SET PASSWORD FOR 'APP_READ_USER'@'%' = '*CEC8D5598B819C35DFCDFC31B81DD33CFC84CEBE';

/* app admin user may insert market data, instruments, new users 
   PLUS the read role
*/
CREATE OR REPLACE                                                ROLE app_admin_user;
GRANT app_read_user                                                TO app_admin_user;
GRANT INSERT ON depotdb.etl_price                                  TO app_admin_user;
GRANT INSERT ON depotdb.etl_price_adjustment                       TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_instrument                  TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_or_update_price_adjustment  TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_or_update_symbol            TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_user                        TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.add_vendor_market               TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.load_price_from_etl             TO app_admin_user;
GRANT EXECUTE ON PROCEDURE depotdb.load_price_adjustment_from_etl  TO app_admin_user;



CREATE OR REPLACE USER 'APP_ADMIN_USER'@'%' IDENTIFIED BY 'temporarypassword';
GRANT USAGE ON depotdb.* TO 'APP_ADMIN_USER'@'%' WITH 
    MAX_USER_CONNECTIONS 10
    MAX_STATEMENT_TIME   60;
GRANT app_admin_user TO 'APP_ADMIN_USER'@'%';
SET DEFAULT ROLE app_admin_user FOR 'APP_ADMIN_USER'@'%';
SET PASSWORD FOR 'APP_ADMIN_USER'@'%' = '*0638176DD3C5022E788C989329E990E818AC42F8';

FLUSH PRIVILEGES;