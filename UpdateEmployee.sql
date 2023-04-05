CREATE PROCEDURE UpdateEmployee
@EmployeeID INT,
@FirstName NVARCHAR(50),
@LastName NVARCHAR(50),
@Department NVARCHAR(50),
@Salary DECIMAL(10,2)
AS
BEGIN
UPDATE Employees
SET FirstName = @FirstName,
      LastName = @LastName,
      Department = @Department,
      Salary = @Salary

WHERE EmployeeID = @EmployeeID
END




