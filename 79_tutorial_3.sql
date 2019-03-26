/*
this is how to comment a block of code
*/
--This procedure allows me to test my code then catch any errors that occur

CREATE PROCEDURE dbo.uspTryCatchTest
AS
BEGIN TRY
	SELECT 1/0
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber
		,ERROR_SEVERITY() AS ErrorSeverity
		,ERROR_STATE() AS ErrorState
		,ERROR_PROCEDURE() AS ErrorProcedure
		,ERROR_LINE() AS ErrorLine
		,ERROR_MESSAGE() AS ErrorMessage
END CATCH