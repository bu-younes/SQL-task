Create TABLE Vendor (
    VendorID INT PRIMARY KEY,
    VendorName VARCHAR(255),
    VendorAddress VARCHAR(255),
    VendorContact VARCHAR(255)
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    ProductDesc TEXT,
    ProductPrice DECIMAL(10, 2),
    VendorID INT,
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID)
);

DROP TABLE Product;

INSERT INTO Vendor (VendorID, VendorName, VendorAddress, VendorContact)
VALUES 
    (1, 'ABC Corp', '123 Main St, Anytown USA', '555-1234'),
    (2, 'XYZ Inc', '456 Oak Ave, Anytown USA', '555-5678');

INSERT INTO Product (ProductID, ProductName, ProductDesc, ProductPrice, VendorID)
VALUES 
    (1, 'Widget', 'A high-quality widget', 10.99, 1),
    (2, 'Gizmo', 'An affordable gizmo', 5.99, 2);



--7. Write SQL code to find all vendors details. 
SELECT * FROM Vendor;

--8. Write SQL code to search vendors by city name. 
SELECT * FROM Vendor WHERE VendorAddress LIKE '%USA%';

--9. Write SQL code to display all products available in the shop in descending order. 
SELECT * FROM Product ORDER BY ProductPrice DESC;

--10. Write SQL code to change the size of any column in the table  
ALTER TABLE Product ALTER COLUMN ProductDesc VARCHAR(200);

--11. Apply Arithmetic Expressions to the price column  

---------------------- Increase the price of all products by 10%----------------------
UPDATE Product
SET ProductPrice = ProductPrice * 1.1;

--------------------- Reduce the price of all products by $2--------------------
UPDATE Product
SET ProductPrice = ProductPrice - 2;

--12. Restrict the rows that are returned by using (where) clause + Comparison Operator 
SELECT ProductID, ProductName, ProductPrice
FROM Product
WHERE ProductPrice < 10.0;
--13. Eliminating the duplicate rows by using (DISTINCT)
SELECT DISTINCT ProductName, ProductPrice
FROM Product;

--14. Fetch data from tables using different type of joins  


-- Inner join --
SELECT Product.ProductName, Vendor.VendorName
FROM Product
INNER JOIN Vendor ON Product.VendorID = Vendor.VendorID;

-- Left join --
SELECT Vendor.VendorName, Product.ProductName
FROM Vendor
LEFT JOIN Product ON Vendor.VendorID = Product.VendorID;

-- Right join --
SELECT Product.ProductName, Vendor.VendorName
FROM Product
RIGHT JOIN Vendor ON Product.VendorID = Vendor.VendorID;

-- Full outer join --
SELECT Product.ProductName, Vendor.VendorName
FROM Product
FULL OUTER JOIN Vendor ON Product.VendorID = Vendor.VendorID;
















-- 1 Procedure to display all even numbers below 100:
CREATE PROCEDURE DisplayEvenNumbers
AS
BEGIN
  DECLARE @i INT = 0
  WHILE @i < 100
  BEGIN
    PRINT @i
    SET @i = @i + 2
  END
END
-- 2 Procedure to display all odd numbers below 100:
CREATE PROCEDURE DisplayOddNumbers
AS
BEGIN
  DECLARE @i INT = 1
  WHILE @i < 100
  BEGIN
    PRINT @i
    SET @i = @i + 2
  END
END
-- 3 Procedure to display whether a number is prime or not:
CREATE PROCEDURE CheckIfPrime
  @num INT
AS
BEGIN
  DECLARE @isPrime BIT = 1
  DECLARE @i INT = 2
  WHILE @i <= SQRT(@num)
  BEGIN
    IF @num % @i = 0
    BEGIN
      SET @isPrime = 0
      BREAK
    END
    SET @i = @i + 1
  END
  IF @isPrime = 1
    PRINT @num + ' is a prime number.'
  ELSE
    PRINT @num + ' is not a prime number.'
END
-- 4 Procedure to display the sum of 10 numbers:
CREATE PROCEDURE DisplaySumOfNumbers
AS
BEGIN
  DECLARE @total INT = 0
  DECLARE @i INT = 1
  WHILE @i <= 10
  BEGIN
    DECLARE @num INT
    SET @num = CAST(READ('Enter a number: ') AS INT)
    SET @total = @total + @num
    SET @i = @i + 1
  END
  PRINT 'The sum of the numbers is: ' + CAST(@total AS NVARCHAR(10))
END
-- 5 Procedure to display 20 multiples for all the numbers between 2 given numbers:
CREATE PROCEDURE dbo.Display20Multiples
    @n INT
AS
BEGIN
    DECLARE @i INT = 1
    WHILE @i <= @n
    BEGIN
        DECLARE @j INT = 1
        PRINT 'Multiples of ' + CONVERT(VARCHAR(10), @i) + ':'
        WHILE @j <= 20
        BEGIN
            PRINT CONVERT(VARCHAR(10), @i * @j)
            SET @j = @j + 1
        END
        SET @i = @i + 1
    END
END
-- 6 Procedure to display the reverse of a given number:
CREATE PROCEDURE ReverseNumber
  @num INT
AS
BEGIN
  DECLARE @reversedNum INT = 0
  WHILE @num > 0
  BEGIN
    DECLARE @digit INT = @num % 10
    SET @reversedNum = (@reversedNum * 10) + @digit
    SET @num = @num / 10
  END
  PRINT 'The reverse of the number is: ' + CAST(@reversedNum AS NVARCHAR(10))
END
-- 7 Procedure to display the sum of individual digits of a given number:
CREATE PROCEDURE SumOfDigits
  @num INT
AS
BEGIN
  DECLARE @total INT = 0
  WHILE @num > 0
  BEGIN
    DECLARE @digit INT = @num % 10
    SET @total = @total + @digit
    SET @num = @num / 10
  END
  PRINT 'The sum of the'
