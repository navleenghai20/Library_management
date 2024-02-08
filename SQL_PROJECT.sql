--Here we are creating a table to store the information about the books-----

CREATE TABLE IF NOT EXISTS book_inform (
	bookid INT PRIMARY KEY NOT NULL,
	book_title VARCHAR(100) NOT NULL,
	price INT NOT NULL,
	copies INT NOT NULL
);

--Here we are inserting values to the table book_infor-----

INSERT INTO book_inform (bookid, book_title, price, copies) VALUES

(4162768, 'Harry Potter', 150, 120 ), 

(6743930, 'Rich Dad Poor Dad', 100, 80),

(653637, 'King: A Life', 180, 98);

--Here we are creating a table to store the information about the authors-----

CREATE TABLE IF NOT EXISTS authors (
	AuthorID INT PRIMARY KEY NOT NULL,	
	bookid INT NOT NULL,
	AuthorName VARCHAR(50) NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(bookid) 
        		REFERENCES book_inform(bookid)
);

--Here we are inserting values to the table authors-----

INSERT INTO authors (AuthorID, bookid, AuthorName) VALUES

(12345, 4162768, 'J. K. Rowling'), 

(78757, 6743930, 'Robert Kiyosaki'),

(8646464, 653637, 'Jonathan Eig' )

;

--Here we are creating a table to store the information about the copies of books stored-----

CREATE TABLE IF NOT EXISTS book_copies (
	CopiesID INT PRIMARY KEY NOT NULL, 
	bookid INT NOT NULL,
	BranchID INT NOT NULL,
	no_of_copies INT NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(bookid) 
        		REFERENCES book_inform(bookid)
);

--Here we are inserting values to the table book_copies-----

INSERT INTO book_copies (CopiesID, bookid, BranchID, no_of_copies) VALUES

(86, 4162768, 115, 1000), 

(78, 6743930 ,115, 548),

(89, 653637, 976, 827 )

;

--Here we are creating a table to store the information about the due date for the books issued-----

CREATE TABLE IF NOT EXISTS book_issue (
	issue_id INT NOT NULL,
	member_id varchar(20) NOT NULL,
	bookid INT NOT NULL,
	due_date date NOT NULL,
	last_reminded date DEFAULT NULL,
	CONSTRAINT fk_Bookid
    		FOREIGN KEY(bookid) 
        		REFERENCES book_inform(bookid)
) ;

--Here we are inserting values to the table book_issue-----

INSERT INTO book_issue (issue_id, member_id, bookid, due_date, last_reminded) VALUES

(1001,67, 4162768, '2024-03-30', '2024-02-01'), 

(1002, 987, 6743930 ,'2024-02-17', '2024-01-15'),

(1003, 876,  653637, '2024-03-22', '2024-01-17' )

;





