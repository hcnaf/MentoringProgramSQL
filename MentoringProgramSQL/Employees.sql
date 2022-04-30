CREATE TABLE [dbo].[Employees]
(
	[Id] INT NOT NULL , 
    [AddressId] INT NOT NULL, 
    [PersonId] INT NOT NULL, 
    [CompanyName] NVARCHAR(20) NOT NULL, 
    [Position] NVARCHAR(30) NULL, 
    [EmployeeName] NVARCHAR(100) NULL, 
    PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Employees_Addresses] FOREIGN KEY (AddressId) REFERENCES Addresses(Id), 
    CONSTRAINT [FK_Employees_Persons] FOREIGN KEY (PersonId) REFERENCES Persons(Id))
