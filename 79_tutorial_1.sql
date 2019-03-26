USE AdventureWorksDW2014
GO

CREATE PROC dbo.uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS

SELECT * FROM ProspectiveBuyer
WHERE City = @City
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1, AddressLine1) + '%'
GO

EXEC dbo.uspGetAddress @City = 'New York', @AddressLine1 = 'A'