SELECT name, 
    country,
    (SELECT rating_name FROM rating_MPAA WHERE films.rating_id = rating_MPAA.rating_id) AS rating_name 
FROM films;

