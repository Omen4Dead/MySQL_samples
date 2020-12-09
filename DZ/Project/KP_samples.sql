USE kinopoisk;

-- подсчет фильмов с определенным рейтингом
SELECT COUNT(name) AS films_count, 
       rating_imdb 
FROM film
WHERE rating_imdb < 6
GROUP BY rating_imdb
ORDER BY rating_imdb;

-- Фильмы, имена актеров и их награды

SELECT f1.name, f1.release_date, p2.name AS person_name, a2.name AS award_name
    FROM film f1
        JOIN award_film af ON f1.id = af.film_id
        JOIN person p2 ON af.person_id = p2.id
        JOIN awards a2 ON af.award_id = a2.id
    WHERE af.is_winner = 1;

-- выбор пользователей младше 18 лет
SELECT *
FROM `user`
WHERE (birthday + INTERVAL 18 YEAR ) > NOW();




-- представления
CREATE OR REPLACE VIEW users AS 
SELECT name, reg_time, region 
FROM `user`;

SELECT * FROM film;


CREATE OR REPLACE VIEW films_rating AS 
SELECT name, rating_imdb, rating_KP 
FROM film
ORDER BY rating_imdb ;


-- триггеры

-- проверка даты рождения при добавлении пользователя
DELIMITER //

DROP TRIGGER IF EXISTS check_user_age//
CREATE TRIGGER check_user_age BEFORE INSERT ON `user`
FOR EACH ROW
BEGIN
    IF NEW.birthday > NOW() THEN 
        SET NEW.birthday = NOW();
    END IF;
END//

DELIMITER ;

-- подсчет числа пользователей
DELIMITER //

CREATE TRIGGER users_count AFTER INSERT ON `user`
FOR EACH ROW
BEGIN
  SELECT COUNT(*) INTO @total FROM `user`;
END//

DELIMITER ;






