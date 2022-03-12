select 
a.autor_name || ' ' || a.autor_surname as "Автор",
count(a.autor_id) as "Количество книг"
from autors a
join books b on a.autor_id = b.book_set_autors_id
group by 1
order by 2 desc
limit 1
