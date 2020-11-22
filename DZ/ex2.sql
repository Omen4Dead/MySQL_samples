-- 2. Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке

USE vk;

SELECT DISTINCT firstname 
    FROM users
    ORDER BY firstname;
   
-- 3. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false).
--    Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)

-- ALTER TABLE vk.profiles DROP COLUMN is_active;

ALTER TABLE vk.profiles ADD is_active BIT DEFAULT True;

UPDATE profiles
SET is_active = FALSE
WHERE TIMESTAMPDIFF(YEAR, birthday, CURDATE()) < 18;

-- 4. Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

DELETE FROM messages
WHERE UNIX_TIMESTAMP(NOW()) - UNIX_TIMESTAMP(created_at) < 0;