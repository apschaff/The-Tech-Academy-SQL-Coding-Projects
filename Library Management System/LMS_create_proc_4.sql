USE db_lms
GO

CREATE PROCEDURE dbo.uspGetDueToday4
AS

SELECT
	 d.Title,
	 b.Name,
	 b.BorrowerAddress
FROM book_loans a
INNER JOIN borrower b
ON a.CardNo = b.CardNo
INNER JOIN library_branch c
ON a.BranchID = c.BranchID
INNER JOIN books d
ON a.BookID = d.BookID
WHERE c.BranchName = 'Sharpstown' AND a.DateDue = FORMAT(GetDate(), 'yyyy-MM-dd');
GO

SELECT FORMAT(GetDate(), 'yyyy-MM-dd')