--Create Table Departments
--(
--     DepartmentID int primary key,
--     DepartmentName nvarchar(50)
--)
--GO

--Create Table Employees2
--(
--     EmployeeID int primary key,
--     EmployeeName nvarchar(50),
--     DepartmentID int foreign key references Departments(DepartmentID)
--)
--GO


--Insert into Departments values (1, 'IT')
--Insert into Departments values (2, 'HR')
--Insert into Departments values (3, 'Payroll')
--GO



--Insert into Employees2 values (1, 'Mark', 1)
--Insert into Employees2 values (2, 'John', 1)
--Insert into Employees2 values (3, 'Mike', 1)
--Insert into Employees2 values (4, 'Mary', 2)
--Insert into Employees2 values (5, 'Stacy', 3)
--GO

select * from Employees2
select * from Departments
 
SELECT TOP 1 DepartmentName, COUNT(*) as EmpCount
FROM Employees2
JOIN Departments
ON Employees2.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY EmpCount DESC

SELECT TOP 1 DepartmentName
FROM Employees2
JOIN Departments
ON Employees2.DepartmentID = Departments.DepartmentID
GROUP BY DepartmentName
ORDER BY COUNT(*) DESC