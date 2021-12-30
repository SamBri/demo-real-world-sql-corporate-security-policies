# demo-real-world-sql-corporate-security-policies
demo sql scripts to apply corporate policies on database access and operation to the various employees under different roles such as INTERN, FULL-TIME, CONSULTANT, CONTRACT

# Intern sql script
```sql 
use customerdb;

-- intern, Adwoa can only read data from LIVE bankcustomer db.
select * from bankcustomer;
-- intern adwoa cannot update bankcustomer details because Sam is her brother
-- and she works at a bank.
update bankcustomer set balance = 1000000 where uid = 34;

-- intern, Adwoa can only read data from LIVE finance db 
select * from banktransaction;
-- intern, Adwoa cannot forge withdrawal type for Sam, uid = 34 because need 
-- wants a reversal on transaction.
update banktransaction set ttype = "send" where uid = 34;

-- but intern, Adwoa can do anything she likes in the testdb for learning
-- and exposure sake 
use testdb;
set sql_safe_updates = 0;
select * from bankcustomer;
-- in testdb, intern, Adwoa has increased Sam's balance to a million for UAT purposes
update bankcustomer set balance = 1000000 where uid = 34;
```

# Intern server response
<img src="https://github.com/SamBri/demo-real-world-sql-corporate-security-policies/blob/master/intern_server_response.PNG"></img>

# Full time sql script
```sql 
use customerdb;
set sql_safe_updates = 0;
-- full time kwame has all persmisisons CRUD granted on LIVE db.
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;
```

# Full time server response
<img src="https://github.com/SamBri/demo-real-world-sql-corporate-security-policies/blob/master/full_time_server_response.PNG"></img>

# Contract sql script
```sql 
use customerdb;
use financedb;
set sql_safe_updates = 0;
-- contract, akua can select and update per her employment
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;
```

# Contract server response
<img src="https://github.com/SamBri/demo-real-world-sql-corporate-security-policies/blob/master/contract_server_response.PNG"></img>

# Consultant sql script 
```sql
use customerdb;
use financedb;
use testdb;
set sql_safe_updates = 0;
-- consultant, kwesi can has access to only testdb with all permissions
select * from bankcustomer;
update bankcustomer set balance = 100 where uid = 34;
-- consultant, kwesi has dropped table bankcustomer
drop table bankcustomer;
```

# Consultant server response 
<img src="https://github.com/SamBri/demo-real-world-sql-corporate-security-policies/blob/master/consultant_server_response.PNG"></img>





