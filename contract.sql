use customerdb;
use financedb;
set sql_safe_updates = 0;
-- contract, akua can select and update per her employment
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;