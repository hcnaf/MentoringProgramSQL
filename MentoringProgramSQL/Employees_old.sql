CREATE TABLE [dbo].[Employees]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [AddressId] INT NOT NULL, 
    [PersonId] INT NOT NULL, 
    [CompanyName] NVARCHAR(20) NOT NULL, 
    [Position] NVARCHAR(30) NULL, 
    [EmployeeName] NVARCHAR(100) NULL
)
