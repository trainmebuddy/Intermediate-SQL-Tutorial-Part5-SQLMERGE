--MERGE STATMENT
SELECT * FROM [dbo].[EmployeeSrc]	--SOURCE TABLE
SELECT * FROM [dbo].[Employee]		--DESTINATION TABLE

--1.INSERT AND UPDATE
MERGE [dbo].[Employee] AS T
USING [dbo].[EmployeeSrc] AS S
ON S.EmployeeID = T.EmployeeID
--FOR INSERT
WHEN NOT MATCHED BY TARGET THEN
INSERT (EmployeeID,FirstName,LastName,Email,Active,Salary)
VALUES (S.EmployeeID,S.FirstName,S.LastName,S.Email,S.Active,S.Salary)
--FOR UPDATES
WHEN MATCHED THEN UPDATE SET
	T.Email	 = S.Email,
	T.Active = S.Active,
	T.Salary = S.Salary;

--2.INSERT AND UPDATE CHANGE ONLY
MERGE [dbo].[Employee] AS T
USING [dbo].[EmployeeSrc] AS S
ON S.EmployeeID = T.EmployeeID
--FOR INSERT
WHEN NOT MATCHED BY TARGET THEN
INSERT (EmployeeID,FirstName,LastName,Email,Active,Salary)
VALUES (S.EmployeeID,S.FirstName,S.LastName,S.Email,S.Active,S.Salary)
--FOR UPDATES
WHEN MATCHED 
AND T.Email <> S.Email 
OR T.Active <> S.Active
OR T.Salary <> S.Salary
THEN UPDATE SET
	T.Email	 = S.Email,
	T.Active = S.Active,
	T.Salary = S.Salary;

--3.INSERT, UPDATE AND DELETE TOGETHER AND CHECK OUTPUT
MERGE [dbo].[Employee] AS T
USING [dbo].[EmployeeSrc] AS S
ON S.EmployeeID = T.EmployeeID
--FOR INSERT
WHEN NOT MATCHED BY TARGET THEN
INSERT (EmployeeID,FirstName,LastName,Email,Active,Salary)
VALUES (S.EmployeeID,S.FirstName,S.LastName,S.Email,S.Active,S.Salary)
--FOR UPDATES
WHEN MATCHED 
AND T.Email <> S.Email 
OR T.Active <> S.Active
OR T.Salary <> S.Salary
THEN UPDATE SET
	T.Email	 = S.Email,
	T.Active = S.Active,
	T.Salary = S.Salary
--FOR DELETE	
WHEN NOT MATCHED BY SOURCE
THEN DELETE	
--CHECK ACTIONS BY MERGE STATEMENT
OUTPUT $ACTION,
DELETED.EmployeeID,
DELETED.FirstName,
DELETED.LastName,
DELETED.Email,
DELETED.Active,
DELETED.Salary,
INSERTED.EmployeeID,
INSERTED.FirstName,
INSERTED.LastName,
INSERTED.Email,
INSERTED.Active,
INSERTED.Salary
;