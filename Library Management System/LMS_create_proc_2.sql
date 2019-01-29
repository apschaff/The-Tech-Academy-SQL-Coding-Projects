USE db_lms
GO

CREATE PROCEDURE dbo.uspGetCopies2
AS

SELECT
	 a.NumberOfCopies,
	 c.BranchName
FROM book_copies a
INNER JOIN books b
ON a.BookID = b.BookID
INNER JOIN library_branch c
ON a.BranchID = c.BranchID
WHERE b.Title = 'The Lost Tribe';
GO