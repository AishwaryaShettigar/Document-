create database cn;
use cn;

CREATE TABLE data1(ID int unique NOT NULL, name VARCHAR(255),Age int);
INSERT INTO data1 values(101,'Praj',45);
INSERT INTO data1 VALUES(102,'Raj',50);
INSERT INTO data1 VALUES(103,'Anup',55);
INSERT INTO data1 VALUES(104,'Pia',35);
INSERT INTO data1 VALUES(105,'manu',20);

alter table data1 add salary int;
alter table data1 add address varchar(250);

update data1 set salary=23 where ID=102;
update data1 set salary=30000 where ID in(102,105);
update data1 set salary=50000 where ID=101;
update data1 set salary=40000 where ID in(103,104);

select *from data1;

update data1 set address='pune' where ID in(101,103,105);
update data1 set address='bangalore' where ID in(102,104);

select address, count(*) from data1 group by address;

select *from data1;

select *from data1 order by name desc;

select address,sum(salary) from data1 group by address;
select address,min(salary) from data1 group by address;
select address,max(salary) from data1 group by address;
select address,avg(salary) from data1 group by address;

select address,sum(salary) from data1 group by address having sum(salary)>75000;
select address,avg(salary) from data1 group by address having avg(salary)>35000;
select address,min(salary) from data1 group by address having min(salary)>20000;
select address,max(salary) from data1 group by address having max(salary)>45000;


 