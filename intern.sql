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





