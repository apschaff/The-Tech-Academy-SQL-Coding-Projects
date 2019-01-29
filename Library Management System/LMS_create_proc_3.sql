USE db_lms
GO

CREATE PROCEDURE dbo.uspGetBorrower3
AS

SELECT Name FROM borrower a
INNER JOIN  book_loans b
ON a.CardNo = b.CardNo
WHERE a.CardNo NOT IN (b.CardNo);