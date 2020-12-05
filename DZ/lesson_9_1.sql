-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DELIMITER //

DROP FUNCTION IF EXISTS hello//
CREATE FUNCTION hello ()
RETURNS VARCHAR (255) DETERMINISTIC
BEGIN
    DECLARE cur_time TIME;
    SET cur_time = CURTIME();

    IF (cur_time > "6:00:00" AND cur_time < "12:00:00") THEN
        RETURN ("Доброе утро");
    ELSEIF (cur_time > "12:00:00" AND cur_time < "18:00:00") THEN
        RETURN ("Добрый день");
    ELSEIF (cur_time > "18:00:00" AND cur_time < "23:59:59") THEN
        RETURN ("Добрый вечер");
    ELSE
        RETURN ("Доброй ночи");
    END IF;
END//

SELECT hello()//

-- В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.

DELIMITER //

DROP TRIGGER IF EXISTS products_insert//
CREATE TRIGGER products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
    IF ((NEW.products.name IS NULL) AND (NEW.products.description IS NULL)) THEN 
        SELECT 'Вставка невозможна!';
    END IF;
END//

INSERT INTO products 
  (name, description)
VALUES
  (null, null);

-- (по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. 
-- Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. 
-- Вызов функции FIBONACCI(10) должен возвращать число 55.