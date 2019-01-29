USE db_lms
GO

CREATE PROCEDURE dbo.uspGetNumberBorrowed6
AS

SELECT
	 a.Name,
	 a.BorrowerAddress,
	 b.NumberBorrowed
FROM borrower a
INNER JOIN (select CardNo, count(*) as NumberBorrowed
          from book_loans
         group by CardNo) b
ON a.CardNo = b.CardNo
WHERE b.NumberBorrowed > 5
GO