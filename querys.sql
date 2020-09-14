SELECT name from restaurants;

SELECT name FROM restaurants WHERE takeout = TRUE;

SELECT name FROM restaurants WHERE distance >= 50;

SELECT name FROM restaurants WHERE name = 'The Grill';

SELECT name, favorite_dish FROM restaurants WHERE stars = 5;


select review from reviews inner join restaurants on restaurants_id = restaurants.id where restaurants.id = 1;

select review from reviews inner join restaurants on restaurants_id = restaurants.id where restaurants.name = 'Strange Taco';

select review, name from reviews inner join restaurants on restaurants_id = restaurants.id where restaurants.name = 'Strange Taco';


