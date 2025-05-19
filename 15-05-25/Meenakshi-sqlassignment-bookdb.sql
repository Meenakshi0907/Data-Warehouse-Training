use pra;
create table book(bookid int primary key auto_increment,
title varchar(100),
author varchar(100),
genre varchar(100),
price int,
publishedyear int,
stock int);

INSERT INTO Book (Title, Author, Genre, Price, PublishedYear, Stock) VALUES
('The Alchemist', 'Paulo Coelho', 'Fiction', 300, 1988, 50),
('Sapiens', 'Yuval Noah Harari', 'Non-Fiction', 500, 2011, 30),
('Atomic Habits', 'James Clear', 'Self-Help', 400, 2018, 25),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 'Personal Finance', 350, 1997, 20),
('The Lean Startup', 'Eric Ries', 'Business', 450, 2011, 15);

insert into book(title, author, genre, price, publishedyear, stock) values 
('Deep Work','Cal Newport','Self-Help',420,2016,35);

select * from book;

SET SQL_SAFE_UPDATES = 0;
update book set price = price+50 where genre = 'self-help';

delete from book where bookid = 4;

select * from book order by title asc;

select * from book order by price desc;

select * from book where genre = "fiction";

select * from book where genre = "self-help" and price > 400;

select * from book where genre = "fiction" or publishedyear > 2000;

select price*stock from book;

select genre, avg(price) as averageprice from book group by genre;

select count(*) as numberofbooks from book where author = 'paulo coelho';

select * from book where title like "%the%";

select * from book where author = "Yuval Noah Harari" and price < 600;

select * from book where price between 300 and 500;

select * from book order by price desc limit 3;

select * from book where publishedyear < 2000;

select genre, count(*) as totalnumberofbook from book group by genre;

select title, count(*) as totalnumberofbook from book group by title having count(*) > 1;

SELECT Author, COUNT(*) AS BookCount FROM Book GROUP BY Author ORDER BY BookCount DESC;

SELECT Genre, Title, Author, PublishedYear FROM Book b WHERE PublishedYear = 
(SELECT MIN(PublishedYear) FROM Book WHERE Genre = b.Genre);