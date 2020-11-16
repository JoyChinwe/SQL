--SQL count() function with GROUP BY clause
create table Info(id integer, Cost integer, city varchar(200));
insert into Info(id, Cost,city) values(1, 100,'Pune');
insert into Info(id, Cost,city) values(2, 50, 'Satara');
insert into Info(id, Cost,city) values(3, 65,'Pune');
insert into Info(id, Cost,city) values(4, 97,'Mumbai');
insert into Info(id, Cost,city) values(5, 12,'USA');
 
SELECT city,count(id)
FROM Info
GROUP BY city;