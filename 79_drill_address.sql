USE AdventureWorks2014
GO

--DROP PROC Person.uspGetContactInfo

CREATE PROCEDURE Person.uspGetContactInfo @FirstName varchar(30) = NULL, @LastName varchar(30) = NULL, @City varchar(30) = NULL
AS

--SELECT * FROM Person.Person
--SELECT * FROM Person.Address
--SELECT * FROM Person.PersonPhone
--SELECT * FROM Person.EmailAddress

SELECT 
	a.FirstName,
	a.LastName,
	c.PhoneNumber,
	d.EmailAddress,
	b.AddressLine1,
	b.AddressLine2,
	b.StateProvinceID,
	b.City,
	b.PostalCode
FROM 
	Person.Person a
INNER JOIN 
	Person.Address b ON a.rowguid = b.rowguid
INNER JOIN
	Person.PersonPhone c ON a.BusinessEntityID = c.BusinessEntityID
INNER JOIN
	Person.EmailAddress d ON a.BusinessEntityID = d.BusinessEntityID
WHERE FirstName = ISNULL(@FirstName, FirstName)
AND LastName = ISNULL(@LastName, LastName)
AND City = ISNULL(@City, City)


EXECUTE Person.uspGetContactInfo @City = 'Calgary'
EXECUTE Person.uspGetContactInfo @FirstName = 'Jane'
EXECUTE Person.uspGetContactInfo @LastName = 'Raheem'

/*
I am a little confused how I would connect the Person.Person and Person.Address tables. 
The rowguid column is contained in each, but the data does not seem to be related. 
Is there a way to join these two tables? 
Is the solution to connect both to other tables that they may share a connection with? 
Is this just a matter of making a connection when you create the tables?
*/