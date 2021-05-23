@echo off
setlocal

if not "%1"=="" goto cline


:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

powershell -Command $pword = read-host "Enter password" -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword) ; ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR) > .tmp.txt 
set /p MYPASS=<.tmp.txt & del .tmp.txt
docker exec -i mydb_db_1 mysql -uroot -p%MYPASS% depotdb < make_db_prod.sql
SET MYPASS=
GOTO END
:cline
docker exec -i mydb_db_1 mysql -uroot -p"%1" depotdb < make_db_prod.sql


:END
endlocal






