USE [db_zoo2]
GO

SELECT tbl_species.species_name AS 'Species Name:', tbl_nutrition.nutrition_type AS 'Nutrition Type:'
FROM tbl_species
LEFT JOIN tbl_nutrition
ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id;

