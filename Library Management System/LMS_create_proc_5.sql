USE db_lms
GO

CREATE PROCEDURE dbo.uspGetBooksLoaned5
AS

SELECT
	 a.BranchName,
	 b.LoanCount
FROM library_branch a
INNER JOIN (select BranchID, count(*) as LoanCount
          from book_loans
         group by BranchID) b
ON a.BranchID = b.BranchID
GO