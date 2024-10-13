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
UPDATE Orders
JOIN (
    SELECT OrderID, SUM(OrderDetails.Quantity * Products.Price) As TotalCost
    FROM OrderDetails
    JOIN Products ON OrderDetails.ProductID = Products.ProductID
    GROUP BY OrderID
) AS OrderTotals ON Orders.OrderID = OrderTotals.OrderID
SET Orders.TotalAmount = OrderTotals.TotalCost;

/* 9- Write an SQL query to delete all orders and their associated order details for a specific customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter. */
--We don't need this query because ON DELETE CASCADE is enabled
DELETE From OrderDetails
WHERE OrderID IN (SELECT OrderID FROM Orders
                    WHERE CustomerID = 1);

DELETE FROM Orders
WHERE CustomerID = 1;

/* 10- Write an SQL query to insert a new electronic gadget product into the "Products" table, including product name, category, price, and any other relevant details. */
INSERT INTO Products (ProductName, Description, Price)
VALUES
('Camera', '20MP, 4K Video Recording', 300.00);

/* 11- Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from "Pending" to "Shipped"). Allow users to input the order ID and the new status. */
-- status column hoga tabhi update hoga na (column add kr du kya)

/* 12- Write an SQL query to calculate and update the number of orders placed by each customer in the "Customers" table based on the data in the "Orders" table. */
-- Add OrderCount column first
ALTER TABLE Customers ADD COLUMN OrderCount INT DEFAULT 0;

UPDATE Customers
JOIN (
    SELECT CustomerID, COUNT(*) AS OrderCount
    FROM Orders
    GROUP BY CustomerID
) AS OrderSummary ON Customers.CustomerID = OrderSummary.CustomerID
SET Customers.OrderCount = OrderSummary.OrderCount;