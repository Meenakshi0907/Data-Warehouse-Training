create database pra;
use pra;

create table Product( ProductID int primary key auto_increment,
ProductName varchar(100), 
Category enum("Electronics","Furniture","Lighting"),
Price int, 
StockQuality int,
Supplier varchar(100));

alter table Product change column StockQuality StockQuantity int;

INSERT INTO Product (ProductName, Category, Price, StockQuantity, Supplier)
VALUES ('Laptop', 'Electronics', 70000, 50, 'TechMart'),
       ('Office Chair', 'Furniture', 5000, 100, 'HomeComfort'),
       ('Smartwatch', 'Electronics', 15000, 200, 'GadgetHub'),
       ('Desk Lamp', 'Lighting', 1200, 300, 'BrightLife'),
       ('Wireless Mouse', 'Electronics', 1500, 250, 'GadgetHub');
       
select * from Product;

INSERT INTO Product (ProductName, Category, Price, StockQuantity, Supplier)
VALUES ('Gaming Keyboard', 'Electronics', 3500, 150, 'TechMart');

SET SQL_SAFE_UPDATES = 0;
update product set price = price * 1.10 where category = "Electronics";
-- SET SQL_SAFE_UPDATES = 1; 

delete from product where productid = 4;

select * from product order by price desc;

select * from product order by stockquantity asc;

select * from product where category = "Electronics";

select * from product where category = "Electronics" and price > 5000;

select * from product where category = "Electronics" or price < 2000;

select sum(price*stockquantity) as totalstockvalue from product;

select category, avg(price) as avgprice from product group by category;

select count(*) as total from product where supplier = 'GadgetHub';

select * from product where productname like '%wireless%';

select * from product where supplier in ('TechMart', 'GadgetHub');

select * from product where price between 1000 and 20000;

select * from product where stockquantity > (select avg(stockquantity) from product);

select * from product order by price desc limit 3;

select supplier from product group by supplier having count(*) > 1;

select category, count(*) as numberofproducts, sum(price*stockquantity) as totalstockvalue from product group by category;

select supplier, count(*) as count from product group by supplier order by count desc;

select * from Product where (Category, Price) in (
    select Category, max(Price)
    from Product
    group by Category
);



