select *
from rental;

select replacement_cost - rental_rate AS CostDiff,
       film_id                        AS FilmID,
       length / 60                    AS FilmInHours
from film;

SELECT rental_rate                 AS RentalRate,
       rental_rate + 3 * 4 - 1     AS Result1,
       (rental_rate + 3) * 4 - 1   AS Result2,
       (rental_rate + 3) * (4 - 1) AS Result3,
       rental_rate + (3 * 4) - 1   AS Result4
FROM film;

SELECT replacement_cost     AS ReplacementCost,
       replacement_cost / 5 AS DecimalRentalRate,
       replacement_cost % 5 AS RemainderRentalRate
FROM film;

select *
from payment;

select amount,
       round(amount)    AS Amnt,
       round(amount, 2) AS Amnt1,
       floor(amount)    AS Amnt2,
       ceil(amount)     AS Amnt3
from payment;

select *
from actor;

select concat(first_name, ' ', last_name) AS FullName
from actor;

select concat(left(first_name, 1), '.', left(last_name, 1), '.') AS Initials
from actor;

select concat(first_name, ' ', last_name)         AS FullName,
       length(concat(first_name, ' ', last_name)) AS Lenght
from actor;

select concat(first_name, ' ', last_name)                    AS FullName,
       reverse(concat(first_name, ' ', last_name))           AS Reversed,
       replace(concat(first_name, ' ', last_name), 'S', '$') AS Replace
from actor;

select actor_id, first_name, last_name
from actor
where actor_id = 100;

select actor_id, first_name, last_name
from actor
where first_name < 'NICK';

select actor_id, first_name, last_name
from actor
where first_name != 'NICK';

select actor_id, first_name, last_name
from actor
where first_name <> 'NICK';

select actor_id, first_name, last_name
from actor
where first_name = 'KENNETH';

select actor_id, first_name, last_name
from actor
where first_name = 'KENNETH'
  AND actor_id < 100;

select actor_id, first_name, last_name
from actor
where first_name = 'KENNETH'
  AND actor_id < 100
  AND last_name = 'TORN';

select actor_id, first_name, last_name
from actor
where first_name = 'KENNETH'
   OR actor_id < 100;

SELECT *
FROM actor
WHERE actor_id != 5;

SELECT *
FROM actor
WHERE actor_id <> 5;

SELECT *
FROM actor
WHERE NOT actor_id = 5;

SELECT *
FROM actor
WHERE first_name = 'KENNETH' AND actor_id < 100
   OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE first_name = 'KENNETH'
   OR last_name = 'TEMPLE' AND actor_id < 100;

SELECT *
FROM actor
WHERE (first_name = 'KENNETH' AND actor_id < 100)
   OR last_name = 'TEMPLE';

SELECT *
FROM actor
WHERE first_name IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN');

SELECT *
FROM actor
WHERE first_name NOT IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN');

SELECT *
FROM actor
WHERE first_name IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN')
  AND actor_id IN (41, 107, 166);

SELECT actor_id
FROM actor
WHERE last_name = 'DEGENERES';

SELECT *
FROM actor
WHERE first_name IN ('NICK', 'JOHNNY', 'JOE', 'VIVIEN')
  AND actor_id IN (SELECT actor_id
                   FROM actor
                   WHERE last_name = 'DEGENERES');

SELECT *
FROM actor
WHERE actor_id >= 10
  AND actor_id <= 20;

SELECT *
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

SELECT *
FROM actor
WHERE actor_id NOT BETWEEN 10 AND 20;

SELECT *
FROM actor
WHERE first_name LIKE 'A%';

SELECT *
FROM actor
WHERE first_name LIKE 'AL%';

SELECT *
FROM actor
WHERE first_name LIKE 'A__E%';

SELECT *
FROM actor
WHERE first_name LIKE 'A%E%';

SELECT *
FROM actor
WHERE first_name NOT LIKE 'A%';

SELECT *
FROM actor
WHERE first_name NOT LIKE 'A%';

SELECT concat(first_name, ' ', last_name) AS FullName
FROM actor
ORDER BY concat(first_name, ' ', last_name);

SELECT concat(first_name, ' ', last_name) AS FullName
FROM actor
ORDER BY FullName;

SELECT last_name
FROM actor LIMIT 5;

SELECT last_name, actor_id
FROM actor LIMIT 5
OFFSET 10;

