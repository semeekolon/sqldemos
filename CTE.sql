--Get depts with more than 3 emps

--Note: A CTE can be thought of as a temporary result set that is defined within the execution scope of a single SELECT, 
--INSERT, UPDATE, DELETE, or CREATE VIEW statement. A CTE is similar to a derived table in that it is not stored as an 
--object and lasts only for the duration of the query.

--Using CTE
With EmployeeCount(DepartmentName, DepartmentID, TotalEmployees)
AS
(
 SELECT DepartmentName, Employees2.DepartmentID, COUNT(Employees2.EmployeeID) as TotalEmployees
  FROM Employees2
  JOIN Departments
  ON Employees2.DepartmentID = Departments.DepartmentID
  GROUP BY DepartmentName, Employees2.DepartmentID
)
Select DepartmentName, DepartmentID, TotalEmployees
from EmployeeCount
where TotalEmployees >= 2


--It is also, possible to create multiple CTE's using a single WITH clause.
WITH EmployeesCountBy_HR_IT_Dept(DepartmentName, DepartmentID, TotalEmployees)
AS
(

 SELECT DepartmentName, Employees2.DepartmentID, COUNT(Employees2.EmployeeID) as TotalEmployees
  FROM Employees2
  JOIN Departments
  ON Employees2.DepartmentID = Departments.DepartmentID
  WHERE DepartmentName IN ('IT','HR')
  GROUP BY DepartmentName, Employees2.DepartmentID
),
EmployeesCountBy_PAyroll(DepartmentName, DepartmentID, TotalEmployee)
AS
(
 SELECT DepartmentName, Employees2.DepartmentID, COUNT(Employees2.EmployeeID) as TotalEmployees
  FROM Employees2
  JOIN Departments
  ON Employees2.DepartmentID = Departments.DepartmentID
  WHERE DepartmentName IN ('Payroll')
  GROUP BY DepartmentName, Employees2.DepartmentID
)
Select * from EmployeesCountBy_HR_IT_Dept 
UNION
Select * from EmployeesCountBy_PAyroll
