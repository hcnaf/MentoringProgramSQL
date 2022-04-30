CREATE TRIGGER [dbo].[Company_Insert_Trigger]
ON [dbo].[Employees]
AFTER INSERT
AS
	DECLARE @CompanyName NVARCHAR(100)
	DECLARE @AddressId INT
	
	SELECT @CompanyName = INSERTED.[CompanyName], @AddressId = INSERTED.[AddressId]
		FROM INSERTED
	
	INSERT INTO [dbo].[Companies]
		([Name], [AddressId]) VALUES (@CompanyName, @AddressId)