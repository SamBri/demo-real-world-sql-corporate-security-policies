use customerdb;
set sql_safe_updates = 0;
-- full time kwame has all persmisisons CRUD granted on LIVE db.
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;