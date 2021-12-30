use customerdb;
use financedb;
use testdb;
set sql_safe_updates = 0;
-- consultant, kwesi can has access to only testdb with all permissions
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;
-- consultant, kwesi has dropped table bankcustomer
drop table bankcustomer;