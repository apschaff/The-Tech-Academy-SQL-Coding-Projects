-- not using SET NOCOUNT ON

/*
CREATE PROCEDURE dbo.uspGetAddress1 @City nvarchar(30)
AS
SELECT * 
FROM Person.Address
WHERE City = @City
GO
*/

-- using SET NOCOUNT ON

CREATE PROCEDURE dbo.uspGetAddress @City nvarchar(30)
AS
SET NOCOUNT ON
SELECT * 
FROM Person.Address
WHERE City = @City
PRINT @@ROWCOUNT
GO