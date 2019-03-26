USE [db_zoo2]
GO

/*
CONVERT(varchar(50),@total_hab is converting the data type from MONEY to string characters
char(9) is a Line Break
char(13) acts as a tab key
*/

DECLARE @total_hab MONEY;
DECLARE @total_nut MONEY;
DECLARE @results MONEY;
SET @total_hab = (SELECT SUM(habitat_cost) FROM tbl_habitat);
SET @total_nut = (SELECT SUM(nutrition_cost) FROM tbl_nutrition);
SET @results = (@total_hab + @total_nut)
PRINT (
	CONVERT(varchar(50),@total_hab) + char(9) + ' - the total habitat cost' + char(13) + 
	CONVERT(varchar(50),@total_nut) + char(9) + char(9) + ' - the total nutrition cost' + char(13) + '---------' + char(13) + 
	CONVERT(varchar(50),@results)
);