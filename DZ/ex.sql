-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными.
-- Заполните их текущими датой и временем.

UPDATE test_db.users
SET created_at=NOW(), updated_at=NOW()
WHERE created_at IS NULL OR updated_at IS NULL;

-- 2. Таблица users была неудачно спроектирована.
-- Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

-- SELECT STR_TO_DATE("August 10 2017", "%M %d %Y");

-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля,
-- если на складе имеются запасы. Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

SELECT * FROM storehouses_products WHERE value > 0
UNION 
SELECT * FROM storehouses_products WHERE value < 1
ORDER BY value;

-- 4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
-- Месяцы заданы в виде списка английских названий ('may', 'august')

SELECT * FROM users
WHERE MONTHNAME(birthday_at) = 'May' 
      OR 
      MONTHNAME(birthday_at) = 'August';

-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2);
-- Отсортируйте записи в порядке, заданном в списке IN.


-- ------------------------------------------------------------------------------------------------------------------------------------


-- 1. Подсчитайте средний возраст пользователей в таблице users

SELECT (TO_DAYS(NOW()) - SUM(TO_DAYS(birthday_at)) / COUNT(birthday_at)) / 365.25 AS average_age
FROM users;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.

SELECT DAYNAME(TIMESTAMPADD(YEAR, (YEAR(NOW()) - YEAR(birthday_at)), birthday_at)) FROM users;

-- 3. (по желанию) Подсчитайте произведение чисел в столбце таблицы





