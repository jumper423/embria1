INSERT INTO users (id, name) VALUES (1, 'Петя');
INSERT INTO users (id, name) VALUES (2, 'Вася');
INSERT INTO users (id, name) VALUES (3, 'Саша');

INSERT INTO categories (id, name) VALUES (1, 'IT');
INSERT INTO categories (id, name) VALUES (2, 'Авто');
INSERT INTO categories (id, name) VALUES (3, 'Дома');

INSERT INTO posts (id, category_id, text) VALUES (1, 2, 'BMW хорошая машина');
INSERT INTO posts (id, category_id, text) VALUES (2, 3, 'Выгодная покупка квартир');
INSERT INTO posts (id, category_id, text) VALUES (3, 3, 'Новостройки');

INSERT INTO likes (user_id, post_id) VALUES (1, 1);
INSERT INTO likes (user_id, post_id) VALUES (1, 2);
INSERT INTO likes (user_id, post_id) VALUES (1, 3);
INSERT INTO likes (user_id, post_id) VALUES (2, 2);
INSERT INTO likes (user_id, post_id) VALUES (2, 3);
INSERT INTO likes (user_id, post_id) VALUES (3, 3);