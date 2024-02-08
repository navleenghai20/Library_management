--Here we are creating a table to store the information about the books-----

CREATE TABLE IF NOT EXISTS book_infor (
	bookid INT PRIMARY KEY NOT NULL,
	book_title VARCHAR(100) NOT NULL,
	author_name VARCHAR(50) NOT NULL,
	category varchar(80) NOT NULL,
	price INT NOT NULL,
	copies INT NOT NULL
);

--Here we are inserting values to the table book_infor-----

INSERT INTO book_infor (bookid, book_title, author_name, category, price, copies)
VALUES
  ('46567', 'X-Men: God Loves, Man Kills', 'Chris', 'Comics', 95, 70),
  ('73563', 'Mike Tyson : Undisputed Truth', 'Larry Sloman, Mike Tyson', 'Sports', 700, 80),
  ('86354', 'V for Vendetta', 'Alan Moore', 'Comics', 800, 40),
  ('28476', 'When Breath Becomes Air', 'Paul Kalanithi', 'Medical', 650, 88),
  ('99764', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 888, 150);


--Here we are creating a table to store the information about the authors-----

CREATE TABLE IF NOT EXISTS authors (
	AuthorID INT PRIMARY KEY NOT NULL,	
	BookID INT NOT NULL,
	AuthorName VARCHAR(50) NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(BookID) 
        		REFERENCES book_info(BookID)
);

--Here we are inserting values to the table authors-----

INSERT INTO authors (AuthorID, BookID, AuthorName) VALUES

(12345, 4162768, 'J. K. Rowling'), 

(78757, 6743930, 'Robert Kiyosaki'),

(8646464, 653637, 'Jonathan Eig' )

;

--Here we are creating a table to store the information about the copies of books stored-----

CREATE TABLE IF NOT EXISTS book_copies (
	CopiesID INT PRIMARY KEY NOT NULL, 
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	no_of_copies INT NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(BookID) 
        		REFERENCES book_info(BookID)
);

--Here we are inserting values to the table book_copies-----

INSERT INTO book_copies (CopiesID, BookID, BranchID, no_of_copies) VALUES

(86, 4162768, 115, 1000), 

(78, 6743930 ,115, 548),

(89, 653637, 976, 827 )

;

--Here we are creating a table to store the information about the due date for the books issued-----

CREATE TABLE IF NOT EXISTS book_issue (
	issue_id INT NOT NULL,
	member_id varchar(20) NOT NULL,
	BookID INT NOT NULL,
	due_date date NOT NULL,
	last_reminded date DEFAULT NULL
) ;

--Here we are inserting values to the table book_issue-----

INSERT INTO book_issue (issue_id, member_id, BookID, due_date, last_reminded) VALUES

(1001,67, 4162768, '2024-03-30', '2024-02-01'), 

(1002, 987, 6743930 ,'2024-02-17', '2024-01-15'),

(1003, 876,  653637, '2024-03-22', '2024-01-17' )

;










