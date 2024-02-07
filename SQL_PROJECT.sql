CREATE TABLE book_info (
BookID INT PRIMARY KEY NOT NULL,
Book_Title VARCHAR(100) NOT NULL,
PublisherName VARCHAR(100) NOT NULL
);

CREATE TABLE authors (
AuthorID INT PRIMARY KEY NOT NULL,	
BookID INT NOT NULL,
AuthorName VARCHAR(50) NOT NULL,
CONSTRAINT fk_Bookid
    FOREIGN KEY(BookID) 
        REFERENCES book_info(BookID)
);

CREATE TABLE book_copies (
	CopiesID INT PRIMARY KEY NOT NULL, 
	BookID INT NOT NULL,
	BranchID INT NOT NULL,
	no_of_copies INT NOT NULL,
		CONSTRAINT fk_Bookid
    		FOREIGN KEY(BookID) 
        		REFERENCES book_info(BookID)
);

CREATE TABLE book_issue (
	issue_id INT NOT NULL,
	member_id varchar(20) NOT NULL,
	BookID INT NOT NULL,
	due_date date NOT NULL,
	last_reminded date DEFAULT NULL
) ;

INSERT INTO book_info (BookID, Book_Title, PublisherName) VALUES

(4162768, 'Harry Potter', 'Bloomsbury'), 

(6743930, 'Rich Dad Poor Dad', 'Plata Publishing, LLC.'),

(653637, 'King: A Life' , 'Farrar, Straus and Giroux')

;


INSERT INTO authors (AuthorID, BookID, AuthorName) VALUES

(12345, 4162768, 'J. K. Rowling'), 

(78757, 6743930, 'Robert Kiyosaki'),

(8646464, 653637, 'Jonathan Eig' )

;

