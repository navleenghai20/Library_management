
-------Queries-------

---Query1: To see all the data from the book_inform table where the information of all the books is stored---

select * from book_inform;

---Query2: To see the title of all the books with their author names by joining the book_inform and authors tables-----
select book_title, AuthorName from 
authors a
join book_inform b on b.bookid = a.bookid;

----Query3: To see the title of the book and it's due date by joining book_inform and book_issue tables----
select DISTINCT book_title, due_date from 
book_issue bi
join book_inform b on b.bookid = bi.bookid;
 
---Query 4: To see the title of a book , author name and the number of copies of those books by joining book_inform, book_copies and authors tables----
select DISTINCT book_title, AuthorName,no_of_copies
from book_copies bc
join book_inform b on b.bookid = bc.bookid
join authors a on b.bookid = a.bookid
order by no_of_copies desc;

