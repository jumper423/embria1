-- Вывод всех постов
SELECT p.id, p.text
FROM posts p;

-- Вывод всех постов + название категории
SELECT p.id, p.text, c.`name` category_name
FROM posts p
JOIN categories c ON c.id = p.category_id;

-- Вывод всех постов + поставил ли лайк пользователь
SELECT p.id, p.text, CASE WHEN l.user_id IS NULL THEN FALSE ELSE TRUE END as is_like
FROM posts p
LEFT JOIN likes l ON l.post_id = p.id AND l.user_id = 2;

-- Фильтрация по категории
SELECT p.id, p.text, CASE WHEN l.user_id IS NULL THEN FALSE ELSE TRUE END as is_like
FROM posts p
LEFT JOIN likes l ON l.post_id = p.id AND l.user_id = 2
WHERE p.category_id = 2;

-- Кто поставил лайки
SELECT u.id, u.`name`
FROM users u
JOIN likes l ON l.user_id = u.id
WHERE l.post_id = 2;

