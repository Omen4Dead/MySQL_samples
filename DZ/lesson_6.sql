-- 1. Пусть задан некоторый пользователь. Из всех пользователей соц. сети найдите человека, который больше всех общался с выбранным пользователем (написал ему сообщений).

SELECT firstname, 
       lastname
       
FROM vk.users
WHERE id = (SELECT 
            MAX(to_user_id)
            FROM
            vk.messages
            WHERE from_user_id = 105
            GROUP BY (from_user_id));

-- 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

SELECT id, 
       firstname, 
       lastname, 
       (SELECT birthday FROM profiles WHERE users.id = user_id) AS birthday,
       (SELECT media_id FROM likes WHERE users.id = user_id) AS likes
FROM users;

-- 3. Определить кто больше поставил лайков (всего): мужчины или женщины.


