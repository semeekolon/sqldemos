
CREATE PROCEDURE spGetEmployeesByIdName
@ID INT,
@Name NVARCHAR(50)
AS
BEGIN
  SELECT EmployeeID, EmployeeName 
  FROM Employees2 
  WHERE EmployeeID = @Id 
  AND EmployeeName = @Name
End

EXECUTE spGetEmployeesByIdName @ID = 2, @Name = 'John'

 --Select EmployeeID, EmployeeName from Employees2 Where EmployeeID = 2 and EmployeeName = 'John'