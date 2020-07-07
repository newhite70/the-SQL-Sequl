-- 18.5.2 1
/*
select title, isbn from book
where genre_id = 6;
*/
/*
select book.title, author.first_name, author.last_name 
from author
Inner Join book on author.author_id = book.author_id
Where deathday = null;
*/





-- Select Count(patron_id) from patron;    

-- select distinct genre_id from book;
-- select * from book;

    

-- Select genre_id, Count(genre_id) as genre_counts  from book group by genre_id;
    
-- checkout    
INSERT INTO loan (patron_id, book_id)
SELECT patron.patron_id, book.book_id FROM patron, book
WHERE patron_id = 1 and book_id = 1 and loan_id = 1;
update patron
	set loan_id = 1
    WHERE patron_id = 1;
update loan
	set date_out = 20200708
    where loan_id = 1;
update book
	set availale = false
	where book_id = 1;


-- checkin
update patron
	set loan_id = null
    WHERE patron_id = 1;
update loan
	set date_in = 20200708
    where loan_id = 1;
update book
	set availale = true
	where book_id = 1;

/*select * from loan where patron_id = 1;

update loan
	set date_out = 20200708
    where loan_id = 1;*/
/*
UNION
SELECT book_id FROM book 
WHERE book_id = 1; 
update book
	set available = false
    where book_id = 1;
update loan
	set date_out = 07/07/2020
    where loan_id = 1;
update patron
	set loan_id = 1
    where patron_id=1;
    */
