CREATE PROCEDURE spGetEmployeesCountByDept
@EmpCount int OUTPUT
AS
BEGIN
  SELECT @EmpCount = COUNT(EmployeeID)
  FROM Employees2 
END

Declare @EmployeeTotal int
Execute spGetEmployeesCountByDept  @EmployeeTotal output
Print @EmployeeTotal