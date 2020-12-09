USE kinopoisk;

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

SELECT id, name FROM `user` u 
UNION
SELECT id, start_session FROM user_session us ;