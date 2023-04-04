CREATE PROCEDURE GetEmployeesByDepartment

  @Department NVARCHAR(50)

AS

BEGIN

  SELECT EmployeeID, FirstName, LastName, Email, Phone, HireDate, Salary, Department

  FROM Employee

  WHERE Department = @Department

END

EXEC GetEmployeesByDepartment IT




