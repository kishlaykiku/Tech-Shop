-- Insert data in Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address)
VALUES
('John', 'Doe', 'john.doe@example.com', '1234567890', '123 Main St, Cityville'),
('Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Elm St, Townsville'),
('Alice', 'Johnson', 'alice.johnson@example.com', '3456789012', '789 Oak St, Villageburg'),
('Bob', 'Brown', 'bob.brown@example.com', '4567890123', '135 Pine St, Hamletown'),
('Charlie', 'Williams', 'charlie.williams@example.com', '5678901234', '246 Maple St, Cityland'),
('David', 'Jones', 'david.jones@example.com', '6789012345', '357 Cedar St, Cityton'),
('Eve', 'Miller', 'eve.miller@example.com', '7890123456', '468 Birch St, Townburg'),
('Frank', 'Wilson', 'frank.wilson@example.com', '8901234567', '579 Ash St, Cityburg'),
('Grace', 'Taylor', 'grace.taylor@example.com', '9012345678', '681 Spruce St, Hamletton'),
('Hannah', 'Lee', 'hannah.lee@example.com', '0123456789', '792 Willow St, Townton');

-- Insert data in Products table
INSERT INTO Products (ProductName, Description, Price)
VALUES
('Laptop', '15-inch, 8GB RAM, 256GB SSD', 850.00),
('Smartphone', '6-inch, 128GB storage, Dual SIM', 600.00),
('Tablet', '10-inch, 64GB storage, Wi-Fi + LTE', 400.00),
('Smartwatch', '1.5-inch display, Bluetooth, Heart Rate Monitor', 150.00),
('Headphones', 'Noise-cancelling, Over-ear', 200.00),
('Keyboard', 'Mechanical, RGB Backlit', 80.00),
('Mouse', 'Wireless, Optical', 50.00),
('Monitor', '24-inch, 1080p', 180.00),
('Printer', 'Laser, All-in-One', 250.00),
('Speaker', 'Bluetooth, Portable', 120.00);

-- Insert data in Orders table
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
(1, '2024-01-01', 950.00),
(2, '2024-01-02', 700.00),
(3, '2024-01-03', 600.00),
(4, '2024-01-04', 250.00),
(5, '2024-01-05', 1000.00),
(6, '2024-01-06', 400.00),
(7, '2024-01-07', 180.00),
(8, '2024-01-08', 150.00),
(9, '2024-01-09', 1200.00),
(10, '2024-01-10', 300.00);

-- Insert data in OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES
(1, 1, 1), -- Laptop
(1, 2, 1), -- Smartphone
(2, 3, 1), -- Tablet
(2, 4, 1), -- Smartwatch
(3, 5, 1), -- Headphones
(3, 6, 1), -- Keyboard
(4, 7, 1), -- Mouse
(5, 8, 1), -- Monitor
(5, 9, 1), -- Printer
(6, 10, 1); -- Speaker

-- Insert data in Inventory table
INSERT INTO Inventory (ProductID, QuantityInStock, LastStockUpdate)
VALUES
(1, 50, '2024-01-01'),
(2, 100, '2024-01-01'),
(3, 75, '2024-01-01'),
(4, 200, '2024-01-01'),
(5, 150, '2024-01-01'),
(6, 120, '2024-01-01'),
(7, 180, '2024-01-01'),
(8, 60, '2024-01-01'),
(9, 40, '2024-01-01'),
(10, 90, '2024-01-01');