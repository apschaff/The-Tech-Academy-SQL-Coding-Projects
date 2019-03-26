USE AdventureWorks2014

DECLARE	@AddressCount int
EXEC dbo.uspGetAddressCount @City = 'Calgary', @AddressCount = @AddressCount OUTPUT
SELECT @AddressCount