USE AdventureWorks2014
GO

CREATE PROCEDURE dbo.uspGetAddressCount @City nvarchar(30), @AddressCount int OUTPUT
AS

SELECT @AddressCount = count(*)
FROM AdventureWorks2014.Person.Address
WHERE City = @City