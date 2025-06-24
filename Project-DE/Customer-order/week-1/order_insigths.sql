create database insights;

use insights;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  delivery_date DATE,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE delivery_status (
  status_id INT PRIMARY KEY,
  order_id INT,
  status VARCHAR(50),
  last_updated TIMESTAMP,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

select * from customers;
select * from orders;
select * from delivery_status;

INSERT INTO customers (customer_id, name, email) VALUES (221, 'Laura Grant', 'laura.grant@example.com');

SELECT * FROM customers WHERE customer_id = 221;

UPDATE customers SET name = 'Laura G. Grant', email = 'laura.g@example.com' WHERE customer_id = 221;

DELETE FROM customers WHERE customer_id = 221;

INSERT INTO orders (order_id, customer_id, order_date, delivery_date) VALUES (231, 5, '2024-07-01', '2024-07-04');

SELECT * FROM orders WHERE customer_id = 5;

UPDATE orders SET delivery_date = '2024-07-05' WHERE order_id = 231;

DELETE FROM orders WHERE order_id = 231;

INSERT INTO delivery_status (status_id, order_id, status, last_updated) VALUES (301, 231, 'Shipped', '2024-07-02 11:00:00');

SELECT * FROM delivery_status WHERE order_id = 129;


