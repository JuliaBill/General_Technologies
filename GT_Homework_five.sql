 1 уровень сложности: В рамках БД "видео-хостинг":


Создать таблицы реакций и комментариев

Добавить несколько записей в каждую таблицу выше

CREATE TABLE video_comments (
comment_id int,
created_at timestamp,
author_id int,
content text,
video_id int);
CREATE TABLE video_reaction (
reaction_id int,
created_at timestamp,
author_id int,
value_ int,
video_id int);

INSERT INTO video_comments (comment_id, created_at, author_id, content, video_id)
VALUES 
(1, current_timestamp, 5, "Super!!!", 1),
(2, current_timestamp, 10, "Very interesting!", 2),
(2, current_timestamp, 12, "Lovely", 2);

INSERT INTO video_reaction (reaction_id, created_at, author_id, value_, video_id)
VALUES
(1, current_timestamp, 3, 2, 1),
(2, current_timestamp, 2, 1, 2),
(3, current_timestamp, 7, 2, 1),
(4, current_timestamp, 6, 1, 2);