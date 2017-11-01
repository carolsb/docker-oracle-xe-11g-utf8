# 1 - Connect
ssh root@localhost -p 49160
password: admin

# 2 Change user
su -l oracle

# 3 conect db
sqlplus "/as sysdba"

# 4 run sqls
 shutdown immediate;
 startup restrict;
 select name from v$database;
 # ALTER DATABASE CHARACTER SET INTERNAL_USE UTF8 ;
 ALTER DATABASE CHARACTER SET INTERNAL_USE WE8ISO8859P1 ;
 ALTER DATABASE CHARACTER SET INTERNAL_USE WE8MSWIN1252 ; 
 select value from NLS_DATABASE_PARAMETERS where parameter='NLS_CHARACTERSET';
shutdown immediate;
startup;
