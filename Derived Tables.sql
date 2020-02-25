--Get depts with more than 3 emps

--Using Derived Tables
SELECT DepartmentName, TotalEmployees
FROM 
 (
  SELECT DepartmentName, Employees2.DepartmentID, COUNT(Employees2.EmployeeID) as TotalEmployees
  FROM Employees2
  JOIN Departments
  ON Employees2.DepartmentID = Departments.DepartmentID
  GROUP BY DepartmentName, Employees2.DepartmentID
 ) 
AS EmployeeCount
WHERE TotalEmployees >= 2

--Note: Derived tables are available only in the context of the current query.



