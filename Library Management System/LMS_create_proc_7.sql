USE db_lms
GO

CREATE PROCEDURE dbo.uspGetCopiesOwned7
AS

SELECT
	 a.AuthorName,
	 d.Title,
	 b.NumberOfCopies,
	 c.BranchName
FROM book_authors a
INNER JOIN book_copies b
ON a.BookID = b.BookID 
INNER JOIN library_branch c
ON b.BranchID = c.BranchID 
INNER JOIN books d
ON a.BookID = d.BookID
WHERE c.BranchName = 'Central' AND a.AuthorName = 'Stephen King'
GO