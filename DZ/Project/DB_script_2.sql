DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;
USE kinopoisk;

DROP TABLE IF EXISTS film;
CREATE TABLE film (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, -- название
    release_date DATE NOT NULL, -- дата выпуска
    duration INT NOT NULL, -- длительность
    description TEXT, -- описание
    rating_KP FLOAT, -- рейтинг кинопоиска
    rating_imdb FLOAT, -- рейтинг IMDB

    INDEX films_idx(name, release_date)
) COMMENT 'Фильмы';

DROP TABLE IF EXISTS tags;
CREATE TABLE tags (
    id SERIAL,
    name TEXT
) COMMENT 'Жанры';

DROP TABLE IF EXISTS film_tag;
CREATE TABLE film_tag (
    film_id BIGINT UNSIGNED NOT NULL,
    tag_id BIGINT UNSIGNED NOT NULL,
    
    PRIMARY KEY (film_id, tag_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
) COMMENT 'Фильмы-Жанр';

DROP TABLE IF EXISTS languages;
CREATE TABLE languages (
    id SERIAL,
    lang VARCHAR(100)
) COMMENT 'Языки';

DROP TABLE IF EXISTS film_lang;
CREATE TABLE film_lang (
    id SERIAL,
    film_id BIGINT UNSIGNED NOT NULL,
    language_id BIGINT UNSIGNED NOT NULL,
    is_original BIT,
    
    PRIMARY KEY (film_id, language_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (language_id) REFERENCES languages(id)
) COMMENT 'Фильм-Язык(оригинал)';

DROP TABLE IF EXISTS `serials`;
CREATE TABLE `serials` (
    id SERIAL,
    film_id BIGINT UNSIGNED NOT NULL,
    season_number INT NOT NULL,
    episod_number INT NOT NULL,
    
    PRIMARY KEY (film_id),
    FOREIGN KEY (film_id) REFERENCES film(id)
) COMMENT 'Фильм-Сериал';

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
    id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    region TEXT,
    birthday DATE,
    reg_time DATETIME DEFAULT NOW(),
    
    INDEX name_idx(name)
) COMMENT 'Пользователь';

DROP TABLE IF EXISTS `user_film_rating`;
CREATE TABLE `user_film_rating` (
    id SERIAL,
    film_id BIGINT UNSIGNED NOT NULL,
    user_id BIGINT UNSIGNED NOT NULL,
    rating INT,
    comment TEXT,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (film_id, user_id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (user_id) REFERENCES `user`(id)
) COMMENT 'Рейтинги + комментарии пользователя';

DROP TABLE IF EXISTS `user_session`;
CREATE TABLE `user_session` (
    id SERIAL, 
    user_id BIGINT UNSIGNED NOT NULL,
    start_session DATETIME DEFAULT NOW(),
    end_session DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (user_id) REFERENCES `user`(id)
) COMMENT 'Даты сессий пользователей';

DROP TABLE IF EXISTS awards;
CREATE TABLE awards (
    id SERIAL, 
    name VARCHAR(255),
    description TEXT,
    
    INDEX award_name_idx (name)
) COMMENT 'Награды';

DROP TABLE IF EXISTS person;
CREATE TABLE person (
    id SERIAL, 
    name VARCHAR(255) NOT NULL,
    birth_date DATE,
    death_date DATE,
    country VARCHAR (100),
    bio TEXT,
    
    INDEX person_name_idx (name)
) COMMENT 'Участники кино';

DROP TABLE IF EXISTS award_film;
CREATE TABLE award_film (
    id SERIAL, 
    award_id BIGINT UNSIGNED,
    film_id BIGINT UNSIGNED,
    person_id BIGINT UNSIGNED,
    is_winner BIT,
    
    FOREIGN KEY (award_id) REFERENCES awards(id),
    FOREIGN KEY (film_id) REFERENCES film(id),
    FOREIGN KEY (person_id) REFERENCES person(id)
) COMMENT 'Награды фильмов и людей';







