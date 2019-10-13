
Create Database db_LMS

CREATE TABLE LIBRARY_BRANCH (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY,
	BranchName varchar(50) NOT NULL,
	Address varchar(50) NOT NULL
);

INSERT INTO LIBRARY_BRANCH
	(BranchName, Address)
	VALUES
		('Sharpstown', '710 W Alder St, Shelton'),
		('Olympia', '313 8th Ave SE, Olympia'),
		('Tumwater', '415 Tumwater Blvd SW, Tumwater'),
		('Central', '476 5th Ave, New York')
;

CREATE TABLE PUBLISHER (
	PublisherName INT PRIMARY KEY NOT NULL IDENTITY,
	Address varchar(50) NOT NULL,
	Phone varchar(50) NOT NULL
);

INSERT INTO Publisher
	(Address, Phone)
	VALUES
		('6228 3rd Ave NW, Seattle', '206-783-2498'),
		('1904 3rd Ave, Seattle', '206-467-4300')
;

CREATE TABLE BOOKS (
	BookID INT PRIMARY KEY NOT NULL IDENTITY ,
	Title varchar(50) NOT NULL,
	PublisherName INT CONSTRAINT FK_PublisherName FOREIGN KEY (PublisherName) REFERENCES PUBLISHER (PublisherName)
);

INSERT INTO BOOKS 
	(Title, PublisherName)
	VALUES
		('The Lost Tribe','1'),
		('Hatchet', '2'),
		('Harry Potter', '1'),
		('Iliad', '2'),
		('Song of Fire and Ice', '2'),
		('The Old Man and the Sea', '1'),
		('For Whom the Bell Tolls', '2'),
		('Fast Car', '1'),
		('Dragons of Autumn Twilight','2'),
		('Dragons of Winter Night', '1'),
		('Dragons of Spring Dawning', '2'),
		('Misery', '1'),
		('The Raven', '2'),
		('Tom Sawyer', '1'),
		('Hamlet', '2'),
		('Goosebumps','1'),
		('James and the Giant Peach','2'),
		('Romeo and Juliet', '1'),
		('Huckleberry Finm', '2'),
		('The Mist', '1')
;

CREATE TABLE BORROWER (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY,
	Name varchar(50) NOT NULL,
	Address varchar(50) NOT NULL,
	Phone varchar(50) NOT NULL
);

INSERT INTO BORROWER
	(Name, Address, Phone)
	VALUES
		('Andrew', '230 SE Crater Rd', '509-868-5240'),
		('Nafeeza', '123 Love Rd', '267-555-1234'),
		('Emilie', '751 Friend St', '509-868-5944'),
		('Alicia', '521 Cheat Rd', '360-229-1085'),
		('Beth', '357 Ocean Shores Blvd', '360-239-3456'),
		('JFO', '987 Yew Ave', '360-754-9876'),
		('Carrie', '41351 Loomis Ave', '789-114-6874'), 
		('Sara', '654 Hot Way', '651-651-7651'), 
		('Blake', '684 Shelton Hwy', '884-156-6451')
;

CREATE TABLE BOOK_LOANS (
	BookID INT CONSTRAINT FK_BookID FOREIGN KEY (BookID) References BOOKS(BookID),
	BranchID INT CONSTRAINT FK_BranchID FOREIGN KEY (BranchID) References LIBRARY_Branch(BranchID),
	CardNo INT CONSTRAINT FK_CardNo FOREIGN KEY (Cardno) References BORROWER(CardNo),
	DateOut varchar(50) NOT NULL,
	DateDue varchar(50) NOT NULL
);

INSERT INTO BOOK_LOANS 
	(BookID,BranchID, CardNo, DateOut, DateDue)
	VALUES
		('2', '1', '2', '01/01', '01/11'),
		('3', '1', '3', '01/02', '01/12'),
		('4', '1', '4', '01/01', '01/11'),
		('5', '4', '5', '01/04', '01/15'),
		('6', '1', '6', '01/01', '01/11'),
		('7', '1', '7', '01/05', '01/15'),
		('8', '3', '8', '01/01', '01/11'),
		('9', '1', '9', '01/08', '01/18'),
		('10', '1', '9', '01/01', '01/11'),
		('11', '1', '9', '01/01', '01/11'),
		('12', '4', '2', '01/10', '01/20'),
		('13', '1', '3', '01/11', '01/21'),
		('14', '3', '4', '01/12', '01/22'),
		('15', '1', '3', '01/01', '01/11'),
		('16', '1', '5', '01/05', '01/15'),
		('17', '3', '6', '01/01', '01/11'),
		('18', '1', '7', '01/06', '01/16'),
		('19', '2', '8', '01/01', '01/11'),
		('20', '1', '7', '01/07', '01/17'),
		('1', '1', '5', '01/01', '01/11'),
		('2', '4', '2', '01/06', '01/16'),
		('3', '1', '6', '01/01', '01/11'),
		('4', '1', '8', '01/05', '01/15'),
		('5', '1', '7', '01/01', '01/11'),
		('6', '1', '9', '01/11', '01/21'),
		('7', '1', '8', '01/08', '01/18'),
		('8', '1', '2', '01/01', '01/11'),
		('9', '1', '2', '01/02', '01/12'),
		('10', '2', '6', '01/01', '01/11'),
		('11', '1', '7', '01/13', '01/23'),
		('12', '4', '7', '01/01', '01/11'),
		('13', '2', '8', '01/08', '01/18'),
		('14', '3', '2', '01/30', '02/09'),
		('15', '1', '3', '01/15', '01/25'),
		('16', '2', '4', '01/11', '01/21'),
		('17', '1', '5', '01/05', '01/15'),
		('18', '1', '6', '01/01', '01/11'),
		('19', '1', '2', '01/01', '01/11'),
		('20', '4', '8', '01/03', '01/13'),
		('1', '2', '9', '01/01', '01/11'),
		('2', '1', '2', '01/08', '01/18'),
		('3', '4', '3', '01/01', '01/11'),
		('4', '1', '4', '01/09', '01/19'),
		('5', '1', '5', '01/01', '01/11'),
		('6', '4', '6', '01/10', '01/20'),
		('7', '1', '7', '01/01', '01/11'),
		('8', '2', '8', '01/09', '01/19'),
		('9', '1', '9', '01/01', '01/11'),
		('10', '2', '2', '01/10', '01/20'),
		('11', '3', '3', '01/01', '01/11'),
		('12', '2', '4', '01/04', '01/14')
;


CREATE TABLE BOOK_AUTHORS (
	BookID INT CONSTRAINT FK_BookI FOREIGN KEY (BookID) References BOOKS(BookID),
	AuthorName varchar(50) NOT NULL
);

INSERT INTO BOOK_AUTHORS
	(BookID, AuthorName)
	VALUES
	('6', 'Ernest Hemingway'),
	('7', 'Ernest Hemingway'),
	('8', 'Tracy Chapman'),
	('9', 'Margaret Weis'),
	('10', 'Margaret Weis'),
	('11', 'Margaret Weis'),
	('1', 'Mark Lee'),
	('12', 'Stephen King'),
	('20', 'Stephen King'),
	('3', 'JK Rowling'),
	('13', 'Edgar Allan Poe'),
	('14', 'Mark Twain'),
	('19', 'Mark Twain'),
	('15', 'Billy Shakespeare'),
	('18', 'Billy Shakespeare'),
	('16', 'RL Stein'),
	('17', 'Ronald Dahl'),
	('5', 'George RR Martin'),
	('2', 'Gary Paulsen'),
	('4', 'Homer')
;

CREATE TABLE BOOK_COPIES (
	BookID INT CONSTRAINT FK_BookD FOREIGN KEY references BOOKS(BookID),
	BranchID INT CONSTRAINT FK_BranchD FOREIGN KEY references LIBRARY_BRANCH(BranchID),
	Number_Of_Copies INT NOT NULL
);
	
INSERT INTO BOOK_COPIES 
	(BookID, BranchID, Number_Of_Copies)
	VALUES
		('1','1', '2'),
		('2', '1', '2'),
		('3', '1', '2'),
		('4', '1', '2'),
		('5', '1', '2'),
		('6', '1', '2'),
		('7', '1', '2'),
		('8', '1', '2'),
		('9', '1', '2'),
		('10', '1', '2'),
		('11', '2','2'),
		('12', '2', '2'),
		('13', '2', '2'),
		('14', '2', '2'),
		('15', '2', '3'),
		('16', '2', '5'),
		('17', '2', '2'),
		('18', '2', '3'),
		('19', '2', '5'),
		('20', '2', '6'),
		('1', '3', '2'), 
		('2', '3', '3'),
		('3', '3', '6'),
		('4', '3', '7'),
		('5','3', '3'),
		('6', '3', '2'),
		('7', '3', '6'),
		('8', '3', '6'),
		('9', '3', '2'),
		('10', '3', '3'),
		('11', '4', '6'),
		('12', '4', '2'),
		('13', '4', '2'),
		('14', '4', '2'),
		('15', '4', '2'),
		('16', '4', '2'),
		('17', '4', '2'),
		('18', '4', '2'),
		('19', '4', '2'),
		('20', '4', '2')
;

Select * FROM LIBRARY_BRANCH
Select * FROM PUBLISHER
Select * FROM BOOKS
Select * FROM BOOK_AUTHORS
Select * FROM BOOK_COPIES
Select * FROM BOOK_LOANS
Select * FROM BORROWER

Select BOOKS.Title, LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies FROM BOOKS
JOIN BOOK_COPIES
ON BOOK_COPIES.BookID = BOOKS.BookID
JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
WHERE Title = 'The Lost Tribe' AND BranchName = 'Sharpstown'

Select BOOKS.Title, LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies FROM BOOKS
JOIN BOOK_COPIES
ON BOOK_COPIES.BookID = BOOKS.BookID
JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
WHERE Title = 'The Lost Tribe'

Select BORROWER.Name, BOOK_LOANS.CardNo, BOOK_LOANS.BookID FROM BORROWER
JOIN BOOK_LOANS
ON BOOK_LOANS.CardNo = BORROWER.CardNo
ISNULL (BORROWER.CardNo, BOOK_LOANS.CardNo)

Select LIBRARY_BRANCH.BranchName, BOOK_LOANS.DateDue, BOOKS.Title, BORROWER.Name, BORROWER.Address FROM BORROWER
JOIN BOOK_LOANS
ON BOOK_LOANS.CardNo = BORROWER.CardNo
JOIN BOOKS
ON BOOKS.BookID = BOOK_LOANS.BookID
JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID = BOOK_LOANS.BranchID
WHERE DateDue = '01/11' AND BranchName = 'Sharpstown'

Select LIBRARY_BRANCH.BranchName, BOOK_COPIES.Number_Of_Copies FROM BOOKS
JOIN BOOK_COPIES
ON BOOK_COPIES.BookID = BOOKS.BookID
JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID

Select * FROM BORROWER
JOIN BOOK_LOANS
ON BOOK_LOANS.CardNo = BORROWER.CardNo


Select BOOK_AUTHORS.AuthorName, BOOKS.Title, BOOK_COPIES.Number_Of_Copies, LIBRARY_BRANCH.BranchName FROM BOOK_AUTHORS
JOIN BOOKS
ON BOOKS.BookID = BOOK_AUTHORS.BookID
JOIN BOOK_COPIES
ON BOOK_COPIES.BookID = BOOKS.BookID
JOIN LIBRARY_BRANCH
ON LIBRARY_BRANCH.BranchID = BOOK_COPIES.BranchID
WHERE AuthorName = 'Stephen King' AND BranchName = 'Central' 
