select b.book_name as "Название книги" ,
a.autor_name || ' ' || a.autor_surname AS "ФИО",
g.genre_name AS "Жанр"
from books_autors ba
join autors a on ba.book_autors_id_1 = a.autor_id or ba.book_autors_id_2 = a.autor_id or ba.book_autors_id_3 = a.autor_id
join books b on b.book_set_autors_id = ba.book_autors_id_1 or ba.book_autors_id_2 = b.book_set_autors_id or ba.book_autors_id_3 = b.book_set_autors_id
join genre g on b.book_set_genre_id = g.genre_id
where b.book_set_genre_id = '12'