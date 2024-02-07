--Here we are creating a table to store the information about the books-----

CREATE TABLE book_info (
BookID INT PRIMARY KEY NOT NULL,
Book_Title VARCHAR(100) NOT NULL,
PublisherName VARCHAR(100) NOT NULL
);

--Here we are creating a table to store the information about the authors-----

CREATE TABLE authors (
AuthorID INT PRIMARY KEY NOT NULL,	
BookID INT NOT NULL,
AuthorName VARCHAR(50) NOT NULL,
CONSTRAINT fk_Bookid
    FOREIGN KEY(BookID) 
        REFERENCES book_info(BookID)
);

--Here we are creating a table to store the information about the copies of books stored-----

CREATE TABLE book_copies (
	CopiesID INT PRIMARY KEY NOT NULL, 
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	no_of_copies INT NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(BookID) 
        		REFERENCES book_info(BookID)
);

--Here we are creating a table to store the information about the due date for the books issued-----

CREATE TABLE book_issue (
	issue_id INT NOT NULL,
	member_id varchar(20) NOT NULL,
	BookID INT NOT NULL,
	due_date date NOT NULL,
	last_reminded date DEFAULT NULL
) ;

--Here we are inserting values to the table book_info-----

INSERT INTO book_info (BookID, Book_Title, PublisherName) VALUES

(4162768, 'Harry Potter', 'Bloomsbury'), 

(6743930, 'Rich Dad Poor Dad', 'Plata Publishing, LLC.'),

(653637, 'King: A Life' , 'Farrar, Straus and Giroux')

;

--Here we are inserting values to the table authors-----

INSERT INTO authors (AuthorID, BookID, AuthorName) VALUES

(12345, 4162768, 'J. K. Rowling'), 

(78757, 6743930, 'Robert Kiyosaki'),

(8646464, 653637, 'Jonathan Eig' )

;

--Here we are inserting values to the table book_copies-----

INSERT INTO book_copies (CopiesID, BookID, BranchID, no_of_copies) VALUES

(86, 4162768, 115, 1000), 

(78, 6743930 ,115, 548),

(89, 653637, 976, 827 )

;

--Here we are inserting values to the table book_issue-----

INSERT INTO book_issue (issue_id, member_id, BookID, due_date, last_reminded) VALUES

(1001,67, 4162768, '2024-03-30', '2024-02-01'), 

(1002, 987, 6743930 ,'2024-02-17', '2024-01-15'),

(1003, 876,  653637, '2024-03-22', '2024-01-17' )

;




