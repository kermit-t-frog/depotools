

/* rebuild trade, cashflow, position
*/

DELIMITER //
CREATE
    DEFINER = CURRENT_USER
    PROCEDURE depotdb.rebuild_trade_cashflow_position() 
    SQL SECURITY DEFINER
    MODIFIES SQL DATA
    COMMENT 'Rebuild trade, cashflow, position. Apply after mis-booked trades.'
BEGIN 
DECLARE done INT DEFAULT FALSE; 
DECLARE v_depotname VARCHAR(30);
DECLARE v_isin CHAR(12);
DECLARE v_valuedate DATE;
DECLARE v_qty DOUBLE;
DECLARE v_prc DOUBLE; 

DECLARE crs CURSOR FOR 
    SELECT t.depotname, t.isin, t.valuedate, t.quantity, t.unitprice 
    FROM depotdb.tmptrd t 
    ORDER BY t.depotname, t.isin, t.valuedate ASC;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

START TRANSACTION;
CREATE OR REPLACE TEMPORARY TABLE depotdb.tmptrd(
     depotname VARCHAR(30)
    ,isin CHAR(12)
    ,valuedate DATE
    ,quantity DOUBLE
    ,unitprice DOUBLE
    ,INDEX tmpidx (depotname,isin,valuedate));

INSERT INTO depotdb.tmptrd 
    (depotname,isin,valuedate,quantity,unitprice)
SELECT 
    d.external_name, i.isin, t.valuedate, t.quantity, t.unitprice 
FROM 
    depotdb.trade t LEFT JOIN depotdb.depot d ON t.depid = d.depid 
                  LEFT JOIN depotdb.instrument i ON t.insid = i.insid;

-- remove trade related cashflows 
DELETE c 
FROM depotdb.cashflow c 
INNER JOIN 
    depotdb.trade t 
ON c.depid = t.depid 
AND c.insid = t.insid 
AND c.valuedate= t.valuedate 
WHERE c.cashflowtype IN ('BUY','SELL','PNL');

-- remove positions
DELETE p 
FROM depotdb.position p 
INNER JOIN depotdb.trade t 
ON p.depid = t.depid 
AND p.insid = t.insid 
AND p.valuedate = t.valuedate;

-- remove trades
DELETE t FROM depotdb.trade t ;

-- iterate over the trade copy table and rebuild:
OPEN crs;
read_loop: LOOP
    FETCH crs INTO v_depotname, v_isin, v_valuedate, v_qty, v_prc;
    IF done THEN 
        LEAVE read_loop;
    END IF;
    CALL depotdb.book_trade(v_depotname, v_isin, v_valuedate, v_qty, v_prc);
END LOOP;
CLOSE crs;
DROP TABLE depotdb.tmptrd;
COMMIT WORK;
END;
//
DELIMITER ; 


