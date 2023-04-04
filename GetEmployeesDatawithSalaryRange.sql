CREATE PROCEDURE GetEmployeeDetailswithSalaryRange
 @SalaryRangeMin MONEY,
 @SalaryRangeMax MONEY
AS
BEGIN
 SELECT Employee.EmployeeID, Employee.FirstName, Employee.LastName, Employee.Email, Employee.Phone, Employee.HireDate, Employee.Salary, Employee.Department,
 Employeedetails.Address, Employeedetails.City, Employeedetails.State, Employeedetails.Zipcode
 FROM Employee
 INNER JOIN Employeedetails ON Employee.EmployeeID = Employeedetails.EmployeeID
 WHERE Employee.Salary BETWEEN @SalaryRangeMin AND @SalaryRangeMax
END
--Drop Procedure if exists GetEmployeeDetailswithSalaryRange

Execute GetEmployeeDetailswithSalaryRange 20000,50000