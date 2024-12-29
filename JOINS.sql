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

select T1.EmpId, T2.Name from Emp AS T1 JOIN Emp AS T2 on T2.EmpId = T1.Id;