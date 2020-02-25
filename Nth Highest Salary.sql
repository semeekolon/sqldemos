--CREATE TABLE Employees
--(
--     ID int primary key identity,
--     FirstName nvarchar(50),
--     LastName nvarchar(50),
--     Gender nvarchar(50),
--     Salary int
--)

--INSERT INTO Employees VALUES ('Ben', 'Hoskins', 'Male', 70000)
--INSERT INTO Employees VALUES ('Mark', 'Hastings', 'Male', 60000)
--INSERT INTO Employees VALUES ('Steve', 'Pound', 'Male', 45000)
--INSERT INTO Employees VALUES ('Ben', 'Hoskins', 'Male', 70000)
--INSERT INTO Employees VALUES ('Philip', 'Hastings', 'Male', 45000)
--INSERT INTO Employees VALUES ('Mary', 'Lambeth', 'Female', 30000)
--INSERT INTO Employees VALUES ('Valarie', 'Vikings', 'Female', 35000)
--INSERT INTO Employees VALUES ('John', 'Stanmore', 'Male', 80000)

SELECT * FROM Employees
ORDER BY salary DESC

--3rd highest
WITH RESULT AS
(
    SELECT FirstName, SALARY, 
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM EMPLOYEES
)
SELECT  TOP 1 SALARY, RESULT.FirstName, RESULT.DENSERANK
FROM RESULT
WHERE RESULT.DENSERANK = 3

--Using Subquery 4th highest
SELECT TOP 1 FirstName, SALARY
FROM 
(SELECT TOP 4  FirstName, SALARY
FROM EMPLOYEES ORDER BY  SALARY DESC) 
AS sub
ORDER BY SALARY ASC
