SELECT
autors.autor_name,
autors.autor_surname,
books.book_name
FROM
books
 JOIN books_autors ON books_autors.book_autors_book_id = books.book_id
 JOIN autors ON books_autors.book_autors_autor_id_3 = autors.autor_id OR books_autors.book_autors_autor_id_2 = autors.autor_id OR books_autors.book_autors_autor_id_1 = autors.autor_id
 JOIN books_genre ON books.book_set_genre_id = books_genre.book_genre_id
JOIN genre ON books_genre.book_genre_genre_id_1 = genre.genre_id OR books_genre.book_genre_genre_id_2 = genre.genre_id OR books_genre.book_genre_genre_id_3 = genre.genre_id
WHERE
genre.genre_name = 'Фантастика'