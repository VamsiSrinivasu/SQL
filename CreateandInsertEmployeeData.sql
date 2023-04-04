CREATE TABLE Employee (
 EmployeeID INT PRIMARY KEY,
 FirstName VARCHAR(50),
 LastName VARCHAR(50),
 Email VARCHAR(100),
 Phone VARCHAR(20),
 HireDate DATE,
 Salary DECIMAL(10,2),
 Department VARCHAR(50)
);

INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, Phone, HireDate, Salary, Department)
VALUES
 (1, 'John', 'Doe', 'johndoe@email.com', '555-1234', '2022-01-01', 50000, 'IT'),
 (2, 'Jane', 'Smith', 'janesmith@email.com', '555-2345', '2022-01-02', 55000, 'Marketing'),
 (3, 'Bob', 'Johnson', 'bobjohnson@email.com', '555-3456', '2022-01-03', 60000, 'HR'),
 (4, 'Alice', 'Williams', 'alicewilliams@email.com', '555-4567', '2022-01-04', 65000, 'Finance'),
 (5, 'David', 'Brown', 'davidbrown@email.com', '555-5678', '2022-01-05', 70000, 'IT'),
 (6, 'Mary', 'Taylor', 'marytaylor@email.com', '555-6789', '2022-01-06', 75000, 'Marketing'),
 (7, 'Michael', 'Anderson', 'michaelanderson@email.com', '555-7890', '2022-01-07', 80000, 'HR'),
 (8, 'Karen', 'Lee', 'karenlee@email.com', '555-8901', '2022-01-08', 85000, 'Finance'),
 (9, 'Daniel', 'Clark', 'danielclark@email.com', '555-9012', '2022-01-09', 90000, 'IT'),
 (10, 'Emily', 'Walker', 'emilywalker@email.com', '555-0123', '2022-01-10', 95000, 'Marketing'),
 (11, 'Thomas', 'Hall', 'thomashall@email.com', '555-1234', '2022-01-11', 100000, 'HR'),
 (12, 'Olivia', 'Wright', 'oliviawright@email.com', '555-2345', '2022-01-12', 105000, 'Finance'),
 (13, 'Richard', 'Johnson', 'richardjohnson@email.com', '555-3456', '2022-01-13', 110000, 'IT'),
 (14, 'Samantha', 'Brown', 'samanthabrown@email.com', '555-4567', '2022-01-14', 115000, 'Marketing'),
 (15, 'Christopher', 'Green', 'christophergreen@email.com', '555-5678', '2022-01-15', 120000, 'HR'),
 (16, 'Lauren', 'Baker', 'laurenbaker@email.com', '555-6789', '2022-01-16', 125000, 'Finance'),
 (17, 'Kevin', 'Allen', 'kevinallen@email.com', '555-7890', '2022-01-17', 130000, 'IT'),
 (18, 'Avery', 'Scott', 'averyscott@email.com', '555-8901', '2022-01-18', 135000, 'Marketing'),
 (19, 'Brandon', 'Nelson','brandonscott@email.com','555-8324','2022-01-19',76000,'IT')


DELETE PROCEDURE InsertEmployeeDetails
AS
BEGIN
 DECLARE @counter INT = 1

 WHILE (@counter <= 30)
 BEGIN
   DECLARE @employeeID INT = @counter
   DECLARE @address VARCHAR(100) = 'Address' + CAST(@counter AS VARCHAR)
   DECLARE @city VARCHAR(50) = 'City' + CAST(@counter AS VARCHAR)
   DECLARE @state VARCHAR(50) = 'State' + CAST(@counter AS VARCHAR)
   DECLARE @zipcode VARCHAR(10) = 'Zipcode' + CAST(@counter AS VARCHAR)

   INSERT INTO EmployeeDetails (EmployeeID, Address, City, State, Zipcode)
   VALUES (@employeeID, @address, @city, @state, @zipcode)

   SET @counter = @counter + 1
 END
END

EXEC InsertEmployeeDetails

-- Create Employeedetails table
CREATE TABLE Employeedetails (
 EmployeeID INT PRIMARY KEY,
 Address VARCHAR(100),
 City VARCHAR(50),
 State VARCHAR(50),
 Zipcode VARCHAR(10)
);

-- Insert 30 employees into Employeedetails table
DECLARE @counter INT = 1

WHILE (@counter <= 30)
BEGIN
 INSERT INTO Employeedetails (EmployeeID, Address, City, State, Zipcode)
 VALUES (@counter, 'Address' + CAST(@counter AS VARCHAR), 'City' + CAST(@counter AS VARCHAR), 'State' + CAST(@counter AS VARCHAR), 'Zipcode' + CAST(@counter AS VARCHAR))

 SET @counter = @counter + 1
END

SELECt * from Employee