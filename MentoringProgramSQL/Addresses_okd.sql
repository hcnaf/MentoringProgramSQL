CREATE TABLE [dbo].[Addresses]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Streen] NVARCHAR(50) NOT NULL, 
    [City] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL, 
    [ZipCode] NVARCHAR(50) NULL
)
