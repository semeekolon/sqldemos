--Create table Employees1
--(
--     ID int,
--     FirstName nvarchar(50),
--     LastName nvarchar(50),
--     Gender nvarchar(50),
--     Salary int
--)


--Insert into Employees1 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into Employees1 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into Employees1 values (1, 'Mark', 'Hastings', 'Male', 60000)
--Insert into Employees1 values (2, 'Mary', 'Lambeth', 'Female', 30000)
--Insert into Employees1 values (2, 'Mary', 'Lambeth', 'Female', 30000)
--Insert into Employees1 values (3, 'Ben', 'Hoskins', 'Male', 70000)
--Insert into Employees1 values (3, 'Ben', 'Hoskins', 'Male', 70000)
--Insert into Employees1 values (3, 'Ben', 'Hoskins', 'Male', 70000)

SELECT * FROM Employees1

WITH EmployeesCTE AS
(
   SELECT *, ROW_NUMBER() OVER(PARTITION BY ID ORDER BY ID) AS RowNumber
   FROM Employees1
)
DELETE FROM EmployeesCTE WHERE RowNumber > 1

--Partition By divides the query set into partions