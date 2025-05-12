-- creating the database
CREATE DATABASE normalizeDB;

-- gettng into the normalize database
USE normalizeDB;

-- (1) creating table ProductDetail
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(100),
    Products VARCHAR(255)
);

-- inserting table ProductDetail data
INSERT INTO ProductDetail (OrderID, CustomerName, Products) 
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'), 
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


-- Question 2
-- first table -orders
CREATE TABLE orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- 2nd table -orderitems
CREATE TABLE Product (
    Product_id INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Quantity INT,
    Order_id INT,
    FOREIGN KEY (Order_id) REFERENCES Orders(OrderID)
);

-- inserting orders table data
INSERT INTO Orders (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- inserting orderitems table data
INSERT INTO Product (Product_id, ProductName, Quantity, Order_id)
VALUES
(1, 'Laptop', 2, 101),
(2, 'Mouse', 1, 101),
(3, 'Tablet', 3, 102),
(4, 'Keyboard', 2, 102),
(5, 'Mouse', 1, 102),
(6, 'Phone', 1, 103);

