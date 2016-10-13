-- Индексы ставим на основе запросов для выборки

-- Вывод всех постов
-- SELECT p.id, p.text
-- FROM posts p;
-- Не требуется

-- Вывод всех постов + название категории
-- SELECT p.id, p.text, c.`name` category_name
-- FROM posts p
-- JOIN categories c ON c.id = p.category_id;
ALTER TABLE `posts`
ADD INDEX `posts_categoty_id_idx` (`category_id`) USING BTREE ;

-- Вывод всех постов + поставил ли лайк пользователь
-- SELECT p.id, p.text, CASE WHEN l.user_id IS NULL THEN FALSE ELSE TRUE END as is_like
-- FROM posts p
-- LEFT JOIN likes l ON l.post_id = p.id AND l.user_id = 2;
ALTER TABLE `likes`
ADD INDEX `likes_post_id_user_id_idx` (`post_id`, `user_id`) USING BTREE ;
-- Какое поле в интексе поставить первое надо вычислять в зависимости где в среднем записей будет меньше

-- Фильтрация по категории
--SELECT p.id, p.text, CASE WHEN l.user_id IS NULL THEN FALSE ELSE TRUE END as is_like
--FROM posts p
--LEFT JOIN likes l ON l.post_id = p.id AND l.user_id = 2
--WHERE p.category_id = 2;
-- Уже есть

-- Кто поставил лайки
--SELECT u.id, u.`name`
--FROM users u
--JOIN likes l ON l.user_id = u.id
--WHERE l.post_id = 2;
-- Уже есть