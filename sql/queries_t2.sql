USE techshop;

/* 1- Write an SQL query to retrieve the names and emails of all customers. */
SELECT FirstName, LastName, Email FROM Customers;

/* 2- Write an SQL query to list all orders with their order dates and corresponding customer names. */
SELECT Orders.OrderID, Orders.OrderDate, CONCAT(Customers.FirstName, ' ', Customers.LastName) AS FullName FROM Orders
JOIN
Customers ON Orders.CustomerID = Customers.CustomerID;

/* 3- Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address. */
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
VALUES
('Kishlay', 'Kumar', 'kishlay.kumar@example.com', '456712389', '420 Gum St, Lincoln');

/* 4- Write an SQL query to update the prices of all electronic gadgets in the "Products" table by 
increasing them by 10%. */
UPDATE Products
SET Price = (Price + (Price * 0.1));

/* 5- Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter. */
DELETE FROME OrderDetails
WHERE OrderID = 5;
-- On delete cascade will automatically delete the order from OrderDetails table, so we won't have to run the above query.
DELETE FROM Orders
WHERE OrderID = 5;

/* 6- Write an SQL query to insert a new order into the "Orders" table Include the customer ID, order date, and any other necessary information. */
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES(11, '2024-01-11', 500.00);

/* 7- Write an SQL query to update the contact information (e.g., email and address) of a specific customer in the "Customers" table. Allow users to input the customer ID and new contact information. */
UPDATE Customers
SET Email = 'kiku.pandit@example.com', Phone = '9567012384', Address = '690 More Gum St, Barack'
WHERE CustomerID = 11;

/* 8- Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities in the "OrderDetails" table. */