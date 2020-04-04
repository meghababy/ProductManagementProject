DROP DATABASE product;
drop table product;
create database product;
use product;

create table product(
product_id int(11) NOT NULL AUTO_INCREMENT,
product_name varchar(25) DEFAULT NULL,
category varchar(25) DEFAULT NULL,
price numeric(7,2) DEFAULT NULL,
dateOfManufacture date,
dateOfExpiry date,
PRIMARY KEY (product_id)

);

drop table product;
drop table login;

INSERT INTO product VALUES
(1,'Parle-G',' Bakery and Bread',20,'2020-01-02','2020-06-02'),
(2,'Dark Fantacy',' Bakery and Bread',30,'2019-12-13','2020-05-13'),
(3,'pepsi','Drinks',60,'2020-01-02','2020-06-02'),
(4,'Johnsons baby oil','Baby care',100,'2020-01-02','2020-06-02');

create table login(
uname varchar(20),
pass varchar(20));


insert into login values('admin','Admin@12');



select * from login;
select * from product;