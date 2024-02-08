
-------Queries-------

---Query1---
select * from book_inform;

---Query2-----
select book_title, AuthorName from 
authors a
join book_inform b on b.bookid = a.bookid;

----Query3----
select book_title, due_date from 
book_issue bi
join book_inform b on b.bookid = bi.bookid;
 
---Query 4----
select book_title, AuthorName,no_of_copies
from book_copies bc
join book_inform b on b.bookid = bc.bookid
join authors a on b.bookid = a.bookid
order by no_of_copies desc;

