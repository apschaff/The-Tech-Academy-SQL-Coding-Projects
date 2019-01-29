USE db_lms
GO

CREATE PROCEDURE dbo.uspGetCopies1 @City nvarchar(30)
AS

SELECT NumberOfCopies
FROM book_copies a
INNER JOIN books b
ON a.BookID = b.BookID
INNER JOIN library_branch c
ON a.BranchID = c.BranchID
WHERE b.Title = 'The Lost Tribe' AND c.BranchName = 'Sharpstown';
GO