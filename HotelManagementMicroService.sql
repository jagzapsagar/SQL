show databases;
use TestDB;
show tables;

drop table mocro_user;
desc hotel_micro;

desc user_micro;
desc hotel_micro;
desc rating_micro;

select * from user_micro;
select * from hotel_micro;
select * from rating_micro;


#LEFT JOIN
select user_micro.id, rating_micro.user_id from user_micro LEFT JOIN rating_micro ON user_micro.id = rating_micro.user_id;
OR
select * from user_micro LEFT JOIN rating_micro ON user_micro.id = rating_micro.user_id;
#INNER JOIN
select user_micro.id, rating_micro.user_id from user_micro INNER JOIN rating_micro ON user_micro.id = rating_micro.user_id;
#Full JOIN 
select user_micro.id, rating_micro.user_id from user_micro LEFT JOIN rating_micro ON user_micro.id = rating_micro.user_id
UNION
select user_micro.id, rating_micro.user_id from user_micro RIGHT JOIN rating_micro ON user_micro.id = rating_micro.user_id;
#Only table 2 data where key is null
select user_micro.id, rating_micro.user_id from user_micro LEFT JOIN rating_micro ON user_micro.id = rating_micro.user_id where 
rating_micro.user_id IS NULL;
#Only table 2 data where key is null
select user_micro.id, rating_micro.user_id from user_micro LEFT JOIN rating_micro ON user_micro.id = rating_micro.user_id where 
user_micro.id IS NULL OR
rating_micro.user_id IS NULL;






====================================================================================================
show databases;
create database TestDB;
use TestDB;
show tables;

select * from rest_api_spring_security;

select * from user_info;
delete from user_info where 
truncate user_info;
ALTER TABLE rest_api_spring_security MODIFY COLUMN id INT AUTO_INCREMENT;



Create table Test(id int, name varchar(10), salary int);

INSERT INTO `testdb`.`test` VALUES(6,'Ram',85000,7),(7,'sham',95000,4),(8,'shitaram',25000,8);
INSERT INTO `testdb`.`test` VALUES(9,'Ram',85000,7);
select * from testdb.test;
update test set depid = 2 where salary > 1000;
SET SQL_SAFE_UPDATES = 0;
select * from test where name='sagar';
create index nameendex on test(name);
drop index nameendex on test;
alter table test add depid int;
select max(salary) from test where salary<(select max(salary) from test);
select DISTINCT salary from Test order by salary DESC LIMIT 1 OFFSET 2;
select DISTINCT salary from Test order by salary DESC LIMIT 2,1;

select * from test order by depid desc;
select * from test order by depid;

select id, count(depid) as countt, name from test group by depid;
****************************************************************************************************************************;
Create table Test2(clgid int, colgname varchar(10), depid int);
select * from test2;
INSERT INTO `testdb`.`test2` VALUES(14,'KKW',21);
INSERT INTO `testdb`.`test2` VALUES(11,'SND',8),(12,'JES',4),(13,'MET',8);
select test.depid, test.name, test2.colgname from test INNER JOIN test2 on test.depid = test2.depid;
********************** FULL OUTER JOIN IN MYSQL BCOZ FULL OUTER JOIN KEYWORD NO SUPPORT IN 
select test.depid, test.name, test2.colgname from test LEFT JOIN test2 on test.depid = test2.depid
UNION
select test.depid, test.name, test2.colgname from test RIGHT JOIN test2 on test.depid = test2.depid;
SELF JOIN
select e1.id, e1.name, e2.depid, e2.name from test e1 join test e2 on e1.id = e2.depid;  
CROSS JOIN
select test.id, test.name, test2.depid as FROMT2 from test CROSS JOIN test2 where test.id = test2.depid;
UNION 
select id, name from test UNION select depid from test2;



