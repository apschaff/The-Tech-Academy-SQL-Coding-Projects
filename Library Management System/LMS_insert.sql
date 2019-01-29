USE db_lms
GO

INSERT INTO library_branch
	(BranchName, BranchAddress)
	VALUES
	('Sharpstown', '109 Main St, Sharpstown DE, 48024'),
	('Central', '4779 9th St, New York NY, 20256'),
	('Julesburg', '22 Wellington Rd, Julesburg SD, 61834'),
	('Palm', '1054 Stratton Dr, Palm LA, 58223')
;

SELECT * FROM library_branch;

INSERT INTO publisher
	(PublisherName, PublisherAddress, Phone)
	VALUES
	('HarperCollins', '624 Summer Dr, Los Angeles CA, 90314', '310-552-4982'),
	('Random House', '4899 Edison St, Chicago IL, 62443', '822-245-9050'),
	('Penguin Books', '1000 Greenbelt Way, Boston MA, 13923', '428-567-1022'),
	('Holtzbrinck Publishing Group', '12005 Sandflats Rd, Phoenix AZ, 78689', '408-585-8843'),
	('Hachette Book Group', '201 willow Dr, Marysville VT, 39200', '980-323-6622'),
	('Fulcrum Publishing', '1400 Roadrunner Dr, Little Rock AR, 28249', '285-488-9274')
;

SELECT * FROM publisher;

INSERT INTO books
	(Title, PublisherName)
	VALUES 
	('The Hit List', 'HarperCollins'),
	('Girl On Fire', 'Random House'),
	('Harry Potter and the Chamber of Secrets', 'Holtzbrinck Publishing Group'),
	('Runaway', 'Penguin Books'),
	('The Lost Tribe', 'HarperCollins'),
	('How to Bake a Cake', 'Hachette Book Group'),
	('The Wheels on the Bus', 'Penguin Books'),
	('Homecoming', 'Random House'),
	('The Invasion', 'Fulcrum Publishing'),
	('Target Practice', 'Fulcrum Publishing'),
	('Hotel California', 'HarperCollins'),
	('Hardys Adventure', 'Random House'),
	('It', 'Holtzbrinck Publishing Group'),
	('How to Get Rich in Two Years or Less', 'Hachette Book Group'),
	('George Washington Biography', 'Hachette Book Group'),
	('The Man On the Moon', 'Penguin Books'),
	('Closing Time', 'HarperCollins'),
	('The Shining', 'Holtzbrinck Publishing Group'),
	('Dora the Explorer', 'Random House'),
	('Diplomatic Affairs', 'Fulcrum Publishing')
;

SELECT * FROM books;

INSERT INTO borrower
	(Name, BorrowerAddress, Phone)
	VALUES
	('Daniel Sng', '624 Summer Dr, Los Angeles CA, 90314', '310-552-4982'),
	('Jeremy Reynolds', '29003 Old Herring Ln, Aliso Viejo CA, 92658', '949-582-4082'),
	('Lisa Smith', '1988 Blue Moon Dr, Apache AZ, 89213', '480-998-2901'),
	('Rae Donaghue', '7729 Diablo Ct, Westlake TX, 69205', '449-502-7309'),
	('Carter Jacobson', '1412 Happy Hwy, Yuba CA, 97314', '562-942-4582'),
	('Donna Rickkets', '9990 Denali Pkwy, Billings MT, 59014', '145-898-5283'),
	('Bret Stevens', '8267 Lilly Ln, Wichita KS, 62998', '299-972-8721'),
	('London Garner', '3287 Jerry Dean Dr, Olathe KS, 64127', '396-424-0657'),
	('Jaron Schmidt', '941 Martin Wy, Nowhere MT, 73550', '587-337-1544')
;

SELECT * FROM borrower;

INSERT INTO book_loans
	(BookID, BranchID, CardNo, DateOut, DateDue)
	VALUES
	(100, 300, 200, '2019-01-19', '2019-04-19'),
	(101, 300, 200, '2019-01-19', '2019-04-19'),
	(102, 300, 200, '2019-01-19', '2019-04-19'),
	(110, 301, 201, '2019-01-18', '2019-04-18'),
	(111, 301, 201, '2019-01-18', '2019-04-18'),
	(112, 301, 201, '2019-01-18', '2019-04-18'),
	(106, 302, 202, '2019-01-17', '2019-04-17'),
	(108, 302, 202, '2019-01-17', '2019-04-17'),
	(116, 302, 202, '2019-01-17', '2019-04-17'),
	(118, 302, 203, '2019-01-16', '2019-04-16'),
	(100, 302, 203, '2019-01-16', '2019-04-16'),
	(108, 302, 203, '2019-01-16', '2019-04-16'),
	(107, 303, 204, '2019-01-15', '2019-04-15'),
	(109, 303, 204, '2019-01-15', '2019-04-15'),
	(117, 303, 204, '2019-01-15', '2019-04-15'),
	(119, 303, 205, '2019-01-14', '2019-04-14'),
	(107, 303, 205, '2019-01-14', '2019-04-14'),
	(115, 303, 205, '2019-01-14', '2019-04-14'),
	(107, 300, 206, '2019-01-11', '2019-04-11'),
	(100, 300, 206, '2019-01-11', '2019-04-11'),
	(102, 300, 206, '2019-01-11', '2019-04-11'),
	(104, 302, 207, '2019-01-10', '2019-04-10'),
	(110, 302, 207, '2019-01-10', '2019-04-10'),
	(112, 302, 207, '2019-01-10', '2019-04-10'),
	(103, 300, 200, '2019-01-9', '2019-04-9'),
	(104, 300, 200, '2019-01-9', '2019-04-9'),
	(105, 300, 200, '2019-01-9', '2019-04-9'),
	(113, 301, 201, '2019-01-8', '2019-04-8'),
	(114, 301, 201, '2019-01-8', '2019-04-8'),
	(115, 301, 201, '2019-01-8', '2019-04-8'),
	(104, 302, 203, '2019-01-5', '2019-04-5'),
	(109, 300, 200, '2019-01-5', '2019-04-5'),
	(108, 301, 206, '2019-01-5', '2019-04-5'),
	(100, 302, 207, '2019-01-4', '2019-04-4'),
	(112, 302, 202, '2019-01-4', '2019-04-4'),
	(117, 303, 205, '2019-01-4', '2019-04-4'),
	(114, 302, 207, '2019-01-3', '2019-04-3'),
	(114, 301, 201, '2019-01-3', '2019-04-3'),
	(101, 300, 200, '2019-01-3', '2019-04-3'),
	(107, 300, 204, '2019-01-2', '2019-04-2'),
	(106, 302, 202, '2019-01-2', '2019-04-2'),
	(110, 302, 202, '2019-01-2', '2019-04-2'),
	(103, 303, 203, '2018-12-29', '2019-03-29'),
	(119, 303, 203, '2018-12-29', '2019-03-29'),
	(115, 303, 207, '2018-12-29', '2019-03-29'),
	(118, 302, 206, '2018-12-28', '2019-03-28'),
	(116, 302, 206, '2018-12-28', '2019-03-28'),
	(104, 300, 204, '2018-12-27', '2019-03-27'),
	(105, 300, 204, '2018-12-27', '2019-03-27'),
	(109, 300, 204, '2018-12-27', '2019-03-27')
;

SELECT * FROM book_loans;

INSERT INTO book_copies
	(BookID, BranchID, NumberOfCopies)
	VALUES
	(100, 300, 2),
	(101, 300, 2),
	(102, 300, 5),
	(103, 300, 2),
	(104, 300, 3),
	(105, 300, 5),
	(106, 300, 3),
	(107, 300, 2),
	(108, 300, 2),
	(109, 300, 6),
	(110, 301, 4),
	(111, 301, 4),
	(112, 301, 5),
	(113, 301, 3),
	(114, 301, 2),
	(115, 301, 4),
	(116, 301, 7),
	(117, 301, 5),
	(118, 301, 2),
	(119, 301, 3),
	(100, 302, 6),
	(102, 302, 3),
	(104, 302, 8),
	(106, 302, 2),
	(108, 302, 5),
	(110, 302, 2),
	(112, 302, 4),
	(114, 302, 2),
	(116, 302, 3),
	(118, 302, 2),
	(101, 303, 7),
	(103, 303, 2),
	(105, 303, 4),
	(107, 303, 6),
	(109, 303, 2),
	(111, 303, 3),
	(113, 303, 8),
	(115, 303, 5),
	(117, 303, 4),
	(119, 303, 2)
;

SELECT * FROM book_copies;

INSERT INTO book_authors
	(BookID, AuthorName)
	VALUES
	(112, 'Stephen King'),
	(100, 'Gerald Rhodes'),
	(101, 'Robert Ludlum'),
	(102, 'J. K. Rowling'),
	(103, 'Danielle Steel'),
	(104, 'Dan Brown'),
	(105, 'Toni Morrison'),
	(106, 'Gerald Oswald'),
	(107, 'Lillian Strasse'),
	(108, 'Bernard Mayfield'),
	(117, 'Stephen King'),
	(109, 'Gerald Rhodes'),
	(110, 'Robert Ludlum'),
	(111, 'J. K. Rowling'),
	(113, 'Danielle Steel'),
	(114, 'Dan Brown'),
	(115, 'Toni Morrison'),
	(116, 'Gerald Oswald'),
	(118, 'Lillian Strasse'),
	(119, 'Bernard Mayfield')
;

SELECT * FROM book_authors;