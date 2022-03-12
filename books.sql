

--
-- Структура таблицы 'autors'
--

CREATE TABLE IF NOT EXISTS public.autors
(
    autor_id integer NOT NULL,
    autor_name character varying COLLATE pg_catalog."default" NOT NULL,
    autor_surname character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT autors_pkey PRIMARY KEY (autor_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.autors
    OWNER to postgres;

--
-- Дамп данных таблицы 'autors'
--

INSERT INTO "autors" (autor_id, autor_name, autor_surname) VALUES
(1, 'Леопольд', 'Бэгби'),
(2, 'Алекс', 'Гиллеспи'),
(3, 'Джордж', 'Шварц'),
(4, 'Руслан', 'Лапушин'),
(5, 'Эдем', 'Клюс'),
(6, 'Кирилл', 'Аполлонио'),
(7, 'Уолтер', 'Тодд'),
(8, 'Алексей', 'Масинг-Делич'),
(9, 'Александр', 'ДеБласио'),
(10, 'Михаил', 'Гринберг'),
(11, 'Григорий', 'Эстрайх'),
(12, 'Олег', 'Прокофьев'),
(13, 'Владимир', 'Нестеренко'),
(14, 'Николай', 'Фогель'),
(15, 'Виталий', 'Цыбизов'),
(16, 'Василий', 'Михайлов'),
(17, 'Константин', 'Волков'),
(18, 'Сергей', 'Болмат'),
(19, 'Тимофей', 'Фрязинский'),
(20, 'Антон', 'Сухочев'),
(21, 'Кирилл', 'Крахт'),
(22, 'Давид', 'Лекух'),
(23, 'Олег', 'Нестеров'),
(24, 'Кирилл', 'Акасс'),
(25, 'Алексей', 'Проханов'),
(26, 'Данилл', 'Бавильский'),
(27, 'Владислав', 'Спектр'),
(28, 'Антонина', 'Боффа'),
(29, 'Геннадий', 'Шульпяков'),
(30, 'Вениамин', 'Козлов'),
(31, 'Уолтер', 'Селф'),
(32, 'Сергей', 'Сущий'),
(33, 'Дзиро', ' Мацумото'),
(34, 'Леопольд', 'Маккензи'),
(35, 'Мария', 'Королева'),
(36, 'Витай', 'Шаров'),
(37, 'Алексей', 'Журбин'),
(38, 'Александр', 'Капю'),
(39, 'Богдан', 'Клетенич'),
(40, 'Ольга', 'Дунаевская'),

-- --------------------------------------------------------

--
-- Структура таблицы 'books'
--

CREATE TABLE IF NOT EXISTS public.books
(
    book_id integer NOT NULL,
    book_isbn character varying COLLATE pg_catalog."default" NOT NULL,
    book_set_autors_id integer NOT NULL,
    book_name character varying COLLATE pg_catalog."default" NOT NULL,
    book_pages integer NOT NULL,
    book_public_data integer NOT NULL,
    book_set_genre_id integer NOT NULL,
    CONSTRAINT books_pkey PRIMARY KEY (book_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books
    OWNER to postgres;

--
-- Дамп данных таблицы 'books'
--

INSERT INTO "books" (book_id, book_isbn, book_set_autors_id, book_name, book_pages, book_public_data, book_set_genre_id) VALUES
(1, '978-5-905295-39-3', 34, 'Жертвы черного дождя (м/о.)', 232, 2017, 19),
(2, '978-5-6043579-4-1', 1, 'Первые слова.О предисловиях Ф.М.Достоевского', 272, 2020, 22),
(3, '978-5-6044208-2-9', 2, 'Поэтическое воображение Пушкина', 304, 2021, 23),
(4, '978-5-6046148-0-8', 3, 'Религиозный сионизм.История и идеология', 200, 2021, 3),
(5, '978-5-6045354-6-2', 4, 'Роса на траве.Слово у Чехова', 256, 2021, 24),
(6, '978-5-6043579-9-6', 5, 'Россия на краю.Воображаемые географии и постсоветская идентичность (12+)', 272, 2020, 25),
(7, '978-5-6044208-3-6', 6, 'Секреты Достоевского.Чтение против течения', 320, 2020, 26),
(8, '978-5-6043579-5-8', 7, 'Социология литературы:институты,идеология,нарратив', 352, 2020, 27),
(9, '978-5-6044208-1-2', 8, 'Упразднение смерти.Миф о спасении в русской литературе ХХ века', 272, 2020, 28),
(10, '978-5-905295-31-7', 35, 'Отважный Намгурш', 44, 2016, 20),
(11, '978-5-6044208-0-5', 9, 'Философ для кинорежиссера.Мераб Мамардашвили и российский кинематограф', 272, 2020, 29),
(12, '978-5-6044208-6-7', 11, 'Я читаюсь не слева направо,по-еврейски:справа налево.Поэтика Бориса Слуцкого', 480, 2020, 30),
(13, '978-5-6044709-6-1', 12, 'Советская гениза.Новые архивные разыскания по истории евреев СССР.Том 1', 544, 2020, 21),
(14, '978-5-6044709-5-4', 13, 'Свеченье слов', 640, 2020, 31),
(15, '5-91103-017-9', 14, 'Чужая', 208, 2006, 4),
(16, '5-93321-064-1', 15, 'Гипнотрон профессора Браилова № 005', 219, 2003, 35),
(17, '5-93321-079-Х', 16, 'Тайна \"Соленоида\" №009.', 313, 2004, 36),
(18, '5-93321-088-9', 17, 'Бумеранг не возвращается', 285, 2004, 37),
(19, '5-93321-096-Х', 18, 'Марс пробуждается.Том 1', 285, 2004, 38),
(20, '5-93321-098-6', 18, 'Марс пробуждается.Том 2', 237, 2004, 39),
(21, '5-93321-115-х', 19, '14 рассказов', 236, 2005, 5),
(22, '5-93321-016-1', 19, 'Сами по себе', 256, 2000, 6),
(23, '978-5-91103-027-8', 20, 'Венера Туберкулеза', 192, 2008, 7),
(24, '978-5-91103-002-5', 21, 'Гоа-синдром (нов.)', 304, 2007, 8),
(25, '5-91103-024-6', 22, 'Метан', 230, 2008, 32),
(26, '5-91103-013-6', 23, 'Мы к вам приедем...', 208, 2006, 9),
(27, '978-5-91103-023-0', 24, 'Юбка (девушка)', 272, 2008, 10),
(28, '5-91103-005-5', 25, 'Обсуждаем\"Секс в большом городе\"', 315, 2006, 2),
(29, '5-93321-110-9', 26, 'Надпись', 640, 2005, 11),
(30, '5-93321-074-9', 26, 'Крейсерова соната', 511, 2003, 12),
(31, '5-93321-077-3', 27, 'Скотомизация', 311, 2004, 13),
(32, '978-5-91103-014-8', 28, 'Наезд (н/о)', 272, 2007, 14),
(33, '978-5-91103-004-9', 28, 'Русский жиголо', 304, 2007, 15),
(34, '5-93321-114-1', 29, 'Ну и тварь ты, Вишковитц!', 208, 2005, 33),
(35, '5-93321-113-3', 30, 'Книга Синана', 252, 2005, 16),
(36, '5-93321-040-4', 31, 'Варшава', 240, 2004, 17),
(37, '5-93321-091-9', 32, 'Кок - н - булл', 271, 2004, 34),
(38, '5-93321-065-х', 33, 'Доктор Бабиян', 360, 2003, 18);
(39, '978-5-905295-39-3', 34, 'Жертвы черного дождя ', 232, 2017, 19),
(40, '978-5-905295-39-3', 34, 'Жертвы черного ', 232, 2017, 19),
-- --------------------------------------------------------

--
-- Структура таблицы 'books_autors'
--

CREATE TABLE IF NOT EXISTS public.books_autors
(
    book_autors_id integer NOT NULL,
    book_autors_book_id integer NOT NULL,
    book_autors_id_1 integer NOT NULL,
    book_autors_id_2 integer,
    book_autors_id_3 integer,
    CONSTRAINT books_autors_pkey PRIMARY KEY (book_autors_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books_autors
    OWNER to postgres;
--
-- Дамп данных таблицы 'books_autors'
--

INSERT INTO "books_autors" (book_autors_id, book_autors_book_id, book_autors_id_1, book_autors_id_2, book_autors_id_3) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 4, 4, NULL, NULL),
(5, 5, 5, NULL, NULL),
(6, 6, 6, NULL, NULL),
(7, 7, 7, NULL, NULL),
(8, 8, 8, NULL, NULL),
(9, 9, 9, NULL, NULL),
(10, 10, 10, NULL, NULL),
(11, 11, 11, NULL, NULL),
(12, 12, 12, NULL, NULL),
(13, 13, 13, NULL, NULL),
(14, 14, 14, NULL, NULL),
(15, 15, 15, NULL, NULL),
(16, 16, 16, NULL, NULL),
(17, 17, 17, NULL, NULL),
(18, 18, 17, NULL, NULL),
(19, 19, 18, NULL, NULL),
(20, 20, 18, NULL, NULL),
(21, 21, 19, NULL, NULL),
(22, 22, 20, NULL, NULL),
(23, 23, 21, NULL, NULL),
(24, 24, 22, NULL, NULL),
(25, 25, 23, NULL, NULL),
(26, 26, 24, 41, NULL),
(27, 27, 26, NULL, NULL),
(28, 28, 27, NULL, 3),
(29, 29, 28, 8, NULL),
(30, 30, 28, NULL, NULL),
(31, 31, 29, NULL, NULL),
(32, 32, 30, 22, NULL),
(33, 33, 31, NULL, NULL),
(34, 34, 32, NULL, NULL),
(35, 35, 33, NULL, NULL),
(36, 36, 34, NULL, NULL),
(37, 37, 35, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы 'books_genre'
--

CREATE TABLE IF NOT EXISTS public.books_genre
(
    book_genre_id integer NOT NULL,
    book_genre_book_id integer NOT NULL,
    book_genre_genre_id_1 integer NOT NULL,
    book_genre_genre_id_2 integer,
    book_genre_genre_id_3 integer,
    CONSTRAINT books_genre_pkey PRIMARY KEY (book_genre_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.books_genre
    OWNER to postgres;

--
-- Дамп данных таблицы 'books_genre'
--

INSERT INTO "books_genre" (book_genre_id, book_genre_book_id, book_genre_genre_id_1, book_genre_genre_id_2, book_genre_genre_id_3) VALUES
(1, 1, 1, 13, NULL),
(2, 2, 8, 1, 13),
(3, 4, 3, 9, 10),
(4, 15, 5, NULL, NULL),
(5, 21, 5, NULL, NULL),
(6, 22, 5, NULL, NULL),
(7, 23, 5, NULL, NULL),
(8, 24, 5, NULL, NULL),
(9, 26, 5, NULL, NULL),
(10, 27, 5, NULL, NULL),
(11, 29, 5, NULL, NULL),
(12, 30, 5, NULL, NULL),
(13, 31, 5, NULL, NULL),
(14, 32, 5, NULL, NULL),
(15, 33, 5, NULL, NULL),
(16, 35, 5, NULL, NULL),
(17, 36, 5, NULL, NULL),
(18, 38, 5, NULL, NULL),
(19, 39, 8, NULL, NULL),
(20, 40, 8, NULL, NULL),
(21, 13, 4, NULL, NULL),
(22, 2, 2, NULL, NULL),
(23, 3, 2, NULL, NULL),
(24, 5, 2, NULL, NULL),
(25, 6, 2, NULL, NULL),
(26, 7, 2, NULL, NULL),
(27, 8, 2, NULL, NULL),
(28, 9, 2, NULL, NULL),
(29, 11, 2, NULL, NULL),
(30, 12, 2, NULL, NULL),
(31, 14, 2, NULL, NULL),
(32, 25, 7, NULL, NULL),
(33, 34, 7, NULL, NULL),
(34, 37, 7, NULL, NULL),
(35, 16, 6, 11, 12),
(36, 17, 6, 11, 12),
(37, 18, 6, 11, 12),
(38, 19, 6, 11, 12),
(39, 20, 6, 11, 12);

-- --------------------------------------------------------

--
-- Структура таблицы 'genre'
--

CREATE TABLE IF NOT EXISTS public.genre
(
    genre_id integer NOT NULL,
    genre_name character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT genre_pkey PRIMARY KEY (genre_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.genre
    OWNER to postgres;
--
-- Дамп данных таблицы 'genre'
--

INSERT INTO "genre" (genre_id, genre_name) VALUES
(1, 'Психология'),
(2, 'Искусство и культура'),
(3, 'Философия'),
(4, 'Исторические науки'),
(5, 'Отечественная литература'),
(6, 'Детективы'),
(7, 'Зарубежная литература'),
(8, 'Комиксы'),
(9, 'История'),
(10, 'Религия'),
(11, 'Приключения'),
(12, 'Фантастика'),
(13, 'Педагогика');


