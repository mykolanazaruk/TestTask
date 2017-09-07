CREATE PROC Dod
@FirstName char(20)
 AS
 Select * from 	Workers
 Where [First Name]=@FirstName
 GO
 Execute Dod @FirstName='Andriy'