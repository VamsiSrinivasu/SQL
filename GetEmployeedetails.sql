CREATE PROCEDURE GetEmployeeDetails
AS
BEGIN
 SELECT Employee.EmployeeID, Employee.FirstName, Employee.LastName, Employee.Email, Employee.Phone, Employee.HireDate, Employee.Salary, Employee.Department,
 Employeedetails.Address, Employeedetails.City, Employeedetails.State, Employeedetails.Zipcode
 FROM Employee
 INNER JOIN Employeedetails ON Employee.EmployeeID = Employeedetails.EmployeeID
END

EXEC GetEmployeeDetails