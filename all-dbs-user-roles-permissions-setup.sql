-- create roles: intern, full-time, contract, consultant
create role 'intern';
create role 'full-time';
create role 'contract';
create role 'consultant';

-- create databases
create database customerdb;
create database financedb;
create database testdb;

-- use database customerdb
use customerdb;
-- create tables for customerdb
-- ussd users are same as commercial banking customers
-- create table from existing ussd user table definition
-- more of migration of users from one channel to another 
create table bankcustomer as select * from ussd.user;
-- repeat line 12 - 15 for financedb
create table banktransaction as select * from ussd.transaction;
-- grace testdb with same LIVE credentials but for UAT purposes
use testdb;
create table bankcustomer as select * from ussd.user;
create table banktransaction as select * from ussd.transaction;





-- grant all CRUD privileges to full-time role
grant all on  customerdb.* to 'full-time';
grant all on  financedb.* to 'full-time';

-- grant select for intern role 
grant select on customerdb.* to 'intern';
grant select on financedb.* to 'intern';
-- add new db to intern role 
grant all on testdb.* to 'intern';

-- grant select, update for contract 
grant select on customerdb.* to 'contract';
grant select on financedb.* to 'contract';
grant update on customerdb.* to 'contract';
grant update on financedb.* to 'contract';

-- grant all privileges for  consultant on testdb
grant all on testdb.* to 'consultant';

-- create 4 users and assign roles
create user 'adwoa'@'localhost' identified by 'adwoa1234';
create user 'kwame'@'localhost' identified by 'kwame1234';
create user 'kwesi'@'localhost' identified by 'kwesi1234';
create user 'akua'@'localhost' identified by 'akua1234';

--  assign roles to users
grant 'intern' to 'adwoa'@'localhost';
grant 'full-time' to 'kwame'@'localhost';
grant 'contract' to 'akua'@'localhost';
grant 'consultant' to 'kwesi'@'localhost';

-- active role when user connects to the server
alter user 'adwoa'@'localhost' default role intern;
alter user 'kwame'@'localhost' default role 'full-time';
alter user 'kwesi'@'localhost' default role 'consultant';
alter user 'akua'@'localhost' default role 'contract';







