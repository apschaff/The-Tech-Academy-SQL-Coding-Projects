USE AdventureWorks2014
GO

--DROP PROC Person.uspGetContactInfo

CREATE PROCEDURE Person.uspGetContactInfo @FirstName varchar(30) = NULL, @LastName varchar(30) = NULL
AS

--SELECT * FROM Person.Person
--SELECT * FROM Person.Address
--SELECT * FROM Person.PersonPhone
--SELECT * FROM Person.EmailAddress

SELECT 
	a.FirstName,
	a.LastName,
	b.PhoneNumber,
	c.EmailAddress
FROM 
	Person.Person a
INNER JOIN
	Person.PersonPhone b ON a.BusinessEntityID = b.BusinessEntityID
INNER JOIN
	Person.EmailAddress c ON a.BusinessEntityID = c.BusinessEntityID
WHERE FirstName = ISNULL(@FirstName, FirstName)
AND LastName = ISNULL(@LastName, LastName)
GO

EXECUTE Person.uspGetContactInfo @FirstName = 'Jane'
EXECUTE Person.uspGetContactInfo @LastName = 'Raheem'
