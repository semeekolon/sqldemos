SELECT * FROM tblEmployee

SELECT City, SUM(Salary) AS TotalSalary 
FROM tblEmployee
GROUP BY City


Select City, Gender, SUM(Salary) as TotalSalary
from tblEmployee
group by City, Gender
order by City

Select City, Gender, SUM(Salary) as TotalSalary, 
COUNT(ID) as TotalEmployees
from tblEmployee
group by City, Gender

Select City, SUM(Salary) as TotalSalary
from tblEmployee
Where City = 'London'
group by City

Select City, SUM(Salary) as TotalSalary
from tblEmployee
group by City
Having City = 'London'


---------------------------------------

--CREATE TABLE [dbo].[tblEmployee](
--	[Id] [bigint] IDENTITY(1,1) NOT NULL,
--	[Name] [nvarchar](50) NOT NULL,
--	[Gender] [nchar](10) NOT NULL,
--	[Salary] [int] NOT NULL,
--	[City] [nchar](10) NOT NULL,
-- CONSTRAINT [PK_tblEmployee] PRIMARY KEY CLUSTERED 
--(
--	[Id] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]

--GO