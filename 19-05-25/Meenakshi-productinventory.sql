use pra;
CREATE TABLE ProductInventory (
    ProductID INT PRIMARY KEY auto_increment,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Quantity INT,
    UnitPrice int,
    Supplier VARCHAR(100),
    LastRestocked DATE
);

INSERT INTO ProductInventory (ProductName, Category, Quantity, UnitPrice, Supplier, LastRestocked)
VALUES 
('Laptop', 'Electronics', 20, 70000, 'TechMart', '2025-04-20'),
('Office Chair', 'Furniture', 50, 5000, 'HomeComfort', '2025-04-18'),
('Smartwatch', 'Electronics', 30, 15000, 'GadgetHub', '2025-04-22'),
('Desk Lamp', 'Lighting', 80, 1200, 'BrightLife', '2025-04-25'),
('Wireless Mouse', 'Electronics', 100, 1500, 'GadgetHub', '2025-04-30');

insert into productinventory(productname, category, quantity, unitprice, supplier, lastrestocked) values
("Gaming Keyboard","Electronics",40,3500,"TechMart","2025-05-01");

update productinventory set quantity = quantity + 20 where productname = "Desk lamp";

delete from productinventory where productid = 2;

select * from productinventory order by productname asc;

select * from productinventory order by quantity desc;

select * from productinventory where category = "electronics";

select * from productinventory where category = "electronics" and quantity > 20;

select * from productinventory where category = "electronics" or unitprice < 2000;

select sum(quantity * unitprice) as totalvalue from productinventory;

select category,avg(unitprice) as averageprice from productinventory group by category;

select count(*) as count from productinventory where supplier = "gadgethub";

select * from productinventory where productname like "W%";

select * from productinventory where supplier = "gadgethub" and unitprice > 10000;

select * from productinventory where unitprice between 1000 and 20000;

select * from productinventory order by unitprice desc limit 3;

select * from productinventory where datediff(curdate(),lastrestock) <= 10;

select Supplier,sum(Quantity) as totalquantity from productinventory group by supplier;

select * from productinventory where Quantity < 30;

SELECT Supplier, COUNT(*) AS ProductCount FROM ProductInventory GROUP BY Supplier HAVING COUNT(*) = (
SELECT MAX(ProductCount) FROM ( SELECT COUNT(*) AS ProductCount FROM ProductInventory GROUP BY Supplier) AS Sub);

SELECT * FROM ProductInventory WHERE (Quantity * UnitPrice) = (SELECT MAX(Quantity * UnitPrice) FROM ProductInventory);







