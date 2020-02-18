@ECHO off

SET ROOT=%~dp0
SET PATH="%ROOT%pgsql\bin";%PATH%
SET PGUSER=postgres
SET PGPASSWORD=postgres
SET PGDATABASE=postgres
SET PGDATA="%ROOT%pgsql\data"
SET PGROOT="%ROOT%pgsql"
SET PGDIR="%ROOT%pgsql\bin"
SET PROCESSOR_ARCHITECTURE=AMD64
SET PGLOCALEDIR=%ROOT%pgsql\share\locale
SET PG_SERV_NAME=PostgreSQL-x64-9.6

REM DB止める
%PGDIR%\pg_ctl stop -D %PGROOT%\data

REM サービス削除
%PGDIR%\pg_ctl unregister -N %PG_SERV_NAME%

REM 初期化
%PGDIR%\pg_ctl initdb -o "--pwfile %ROOT%install\dbuser.conf -A md5 -D %PGROOT%\data -U postgres -E UTF8"

REM パスワードファイル削除
DEL %ROOT%install\dbuser.conf

ECHO     DBサービス化
%PGDIR%\pg_ctl register -D %PGROOT%\data -N %PG_SERV_NAME% -S auto

SC start %PG_SERV_NAME%
