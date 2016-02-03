create user ZSPRINGBASIC identified by ZSPRINGBASIC;
grant create session to ZSPRINGBASIC;
grant create table to ZSPRINGBASIC;
grant create sequence to ZSPRINGBASIC;
grant unlimited tablespace to ZSPRINGBASIC;
create sequence zspringbasic.message_seq start with 1001 increment by 1 cache 2;
create sequence zspringbasic.messagetype_seq start with 1001 increment by 1 cache 2;