USE [db_zoo2]
GO

SELECT 
	a.specialist_fname,
	a.specialist_lname,
	a.specialist_contact
FROM 
	tbl_specialist a
INNER JOIN 
	tbl_care b ON a.specialist_id = b.care_specialist
INNER JOIN
	tbl_species c ON b.care_id = c.species_care
WHERE c.species_name = 'Penguin';
