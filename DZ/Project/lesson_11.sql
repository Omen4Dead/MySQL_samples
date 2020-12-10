-- Практическое задание по теме “Оптимизация запросов”


-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, 
-- catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `tbl_name` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `key` bigint NOT NULL,
  `get_name` varchar(255) NOT NULL
) ENGINE=ARCHIVE;

DROP TRIGGER IF EXISTS `update_logs`;

DELIMITER //

CREATE TRIGGER `update_after_insert_users` AFTER INSERT ON users
FOR EACH ROW
BEGIN
    DECLARE `tbl_nm` varchar(100);
    DECLARE `key` bigint;
    DECLARE `get_nm` varchar(255);

    SET `tbl_nm` = 'users';
    SET `key` = NEW.id;
    SET `get_nm` = NEW.name;

    INSERT INTO logs (`tbl_name`, `key`, `get_name`) VALUES
        (`tbl_nm`, `key`, `get_nm`);
     
END//

CREATE TRIGGER `update_after_insert_catalogs` AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
    DECLARE `tbl_nm` varchar(100);
    DECLARE `key` bigint;
    DECLARE `get_nm` varchar(255);

    SET `tbl_nm` = 'catalogs';
    SET `key` = NEW.id;
    SET `get_nm` = NEW.name;

    INSERT INTO logs (`tbl_name`, `key`, `get_name`) VALUES
        (`tbl_nm`, `key`, `get_nm`);
     
END//

CREATE TRIGGER `update_after_insert_products` AFTER INSERT ON products
FOR EACH ROW
BEGIN
    DECLARE `tbl_nm` varchar(100);
    DECLARE `key` bigint;
    DECLARE `get_nm` varchar(255);

    SET `tbl_nm` = 'products';
    SET `key` = NEW.id;
    SET `get_nm` = NEW.name;

    INSERT INTO logs (`tbl_name`, `key`, `get_name`) VALUES
        (`tbl_nm`, `key`, `get_nm`);
     
END//

DELIMITER ;

-- (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP PROCEDURE IF EXISTS insert_into_users ;
delimiter //
CREATE PROCEDURE insert_into_users ()
BEGIN
    DECLARE i INT DEFAULT 100; -- должен быть 1.000.000
    DECLARE j INT DEFAULT 0;
    WHILE i > 0 DO
        INSERT INTO users(name, birthday_at) VALUES (CONCAT('user_', j), NOW());
        SET j = j + 1;
        SET i = i - 1;
    END WHILE;
END //
delimiter ;

CALL insert_into_users();

-- Практическое задание по теме “NoSQL”

-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
SADD ip '127.0.0.1' '127.0.0.2' '127.0.0.3'

SADD ip '127.0.0.1' 

SMEMBERS ip

SCARD ip

-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу
-- и наоброт, поиск электронного адреса пользователя по его имени.

set alex@mail.ru alex 
set alex alex@mail.ru

get alex@mail.ru 
get alex 

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

use products
db.products.insert({"name": "Intel Core i3-8100", "description": "Процессор для настольных ПК", "price": "8000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}) 

db.products.insertMany([
    {"name": "AMD FX-8320", "description": "Процессор для настольных ПК", "price": "4000.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()},
    {"name": "AMD FX-8320E", "description": "Процессор для настольных ПК", "price": "4500.00", "catalog_id": "Процессоры", "created_at": new Date(), "updated_at": new Date()}])

db.products.find().pretty()
db.products.find({name: "AMD FX-8320"}).pretty()






