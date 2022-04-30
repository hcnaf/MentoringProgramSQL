CREATE VIEW [dbo].[EmployeeInfo]
AS 
	SELECT TOP(100) PERCENT
		dbo.Employees.Id AS EmployeeId, 
		CASE
			WHEN Employees.EmployeeName IS NULL THEN (Persons.FirstName + ' ' + Persons.LastName)
			ELSE Employees.EmployeeName
		 END AS EmployeeFullName,  
		(Addresses.ZipCode + '_' + Addresses.State + ',' + Addresses.City + '-' + Addresses.Street) as EmployeeFullAddress,
		(Employees.CompanyName + '(' + Employees.Position + ')') as EmployeeCompanyFullInfo
		
		FROM Employees 
			JOIN Persons ON Persons.Id = Employees.PersonId
			JOIN Addresses ON Addresses.Id = Employees.AddressId
		
		ORDER BY Employees.CompanyName