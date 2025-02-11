-- Insert 10 records into the Author table
INSERT INTO author (name, birthdate) VALUES
('Stephen King', '1947-09-21'),
('J.K. Rowling', '1965-07-31'),
('George R.R. Martin', '1948-09-20'),
('Agatha Christie', '1890-09-15'),
('Ernest Hemingway', '1899-07-21'),
('Jane Austen', '1775-12-16'),
('Charles Dickens', '1812-02-07'),
('Leo Tolstoy', '1828-09-09'),
('Mark Twain', '1835-11-30'),
('Virginia Woolf', '1882-01-25');

-- Insert 10 records into the Publisher table
INSERT INTO publisher (name, address) VALUES
('Penguin Random House', 'New York, USA'),
('HarperCollins', 'New York, USA'),
('Simon & Schuster', 'New York, USA'),
('Hachette Livre', 'Paris, France'),
('Macmillan Publishers', 'London, UK'),
('Bloomsbury Publishing', 'London, UK'),
('Scholastic Corporation', 'New York, USA'),
('Pearson PLC', 'London, UK'),
('Bertelsmann', 'Gütersloh, Germany'),
('Holtzbrinck Publishing Group', 'Stuttgart, Germany');

-- Insert 10 records into the Book table
INSERT INTO book (isbn, title, edition, price, publicationdate, description, authorid, publisherid) VALUES
('978-0345391803', 'The Shining', 1, 14.99, '1977-01-28', 'A horror novel', 1, 1),
('978-0747532743', 'Harry Potter', 1, 19.99, '1997-06-26', 'The first book', 2, 6),
('978-0553103540', 'A Game of Thrones', 1, 24.99, '1996-08-01', 'First book in series', 3, 1),
('978-0007122141', 'And Then There Were None', 1, 12.99, '1939-11-06', 'A mystery novel', 4, 5),
('978-0743273565', 'The Old Man and the Sea', 1, 9.99, '1952-09-08', 'A novella', 5, 3),
('978-0141439518', 'Pride and Prejudice', 1, 11.99, '1813-01-28', 'A novel by Jane Austen', 6, 1),
('978-0141439433', 'Oliver Twist', 1, 13.99, '1838-03-01', 'A novel by Dickens', 7, 1),
('978-0140449275', 'War and Peace', 1, 29.99, '1869-01-01', 'A novel by Tolstoy', 8, 1),
('978-0142437255', 'Huckleberry Finn', 1, 14.99, '1884-12-10', 'A novel by Twain', 9, 1),
('978-0156027321', 'To the Lighthouse', 1, 10.99, '1927-05-05', 'A novel by Woolf', 10, 3);

-- Insert 10 records into the Customer table
INSERT INTO customer (name, address, email) VALUES
('John Smith', '123 Main St', 'john.smith@example.com'),
('Jane Doe', '456 Oak Ave', 'jane.doe@example.com'),
('David Lee', '789 Pine Ln', 'david.lee@example.com'),
('Sarah Jones', '101 Elm St', 'sarah.jones@example.com'),
('Michael Brown', '222 Maple Dr', 'michael.brown@example.com'),
('Emily Davis', '333 Birch Rd', 'emily.davis@example.com'),
('Christopher Wilson', '444 Cedar Ct', 'christopher.wilson@example.com'),
('Jessica Garcia', '555 Redwood Pl', 'jessica.garcia@example.com'),
('Ashley Rodriguez', '666 Willow Way', 'ashley.rodriguez@example.com'),
('Kevin Martinez', '777 Oak St', 'kevin.martinez@example.com');

-- Insert 10 records into the Order table
INSERT INTO [order] (orderdate, shippingaddress, customerid) VALUES
('2024-07-20 10:00:00', '123 Main St', 1),
('2024-07-20 11:00:00', '456 Oak Ave', 2),
('2024-07-20 12:00:00', '789 Pine Ln', 3),
('2024-07-20 13:00:00', '101 Elm St', 4),
('2024-07-20 14:00:00', '222 Maple Dr', 5),
('2024-07-20 15:00:00', '333 Birch Rd', 6),
('2024-07-20 16:00:00', '444 Cedar Ct', 7),
('2024-07-20 17:00:00', '555 Redwood Pl', 8),
('2024-07-20 18:00:00', '666 Willow Way', 9),
('2024-07-20 19:00:00', '777 Oak St', 10);

-- Insert 10 records into the OrderItem table
INSERT INTO orderitem (orderid, isbn, quantity, price) VALUES
(1, '978-0345391803', 1, 14.99),
(1, '978-0747532743', 2, 19.99),
(2, '978-0553103540', 1, 24.99),
(3, '978-0007122141', 3, 12.99),
(4, '978-0743273565', 1, 9.99),
(5, '978-0141439518', 2, 11.99),
(6, '978-0141439433', 1, 13.99),
(7, '978-0140449275', 1, 29.99),
(8, '978-0142437255', 2, 14.99),
(9, '978-0156027321', 1, 10.99);

-- Insert 10 records into the Inventory table
INSERT INTO inventory (isbn, quantity) VALUES
('978-0345391803', 10),
('978-0747532743', 5),
('978-0553103540', 15),
('978-0007122141', 20),
('978-0743273565', 8),
('978-0141439518', 12),
('978-0141439433', 7),
('978-0140449275', 3);