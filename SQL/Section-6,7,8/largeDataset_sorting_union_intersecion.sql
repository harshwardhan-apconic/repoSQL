CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR,
    last_name VARCHAR
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    department VARCHAR,
    price INTEGER,
    weight INTEGER
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id),
    product_id INTEGER REFERENCES products(id),
    paid BOOLEAN
);

-- ***************************SECTION-6*******************************
--78
select paid, count(*) from orders group by paid ;

--80
select first_name, last_name , paid from users join orders on users.id = orders.user_id;



-- ***************************SECTION-7*******************************
--limit n -> only give the first n rows from result set
--offset n -> skips the first n rows from result set

-82
SELECT * FROM products order BY price;
SELECT * FROM products order BY name DESC;

--83
SELECT * FROM products order BY price, weight ;

-84
SELECT name,price FROM products ORDER BY price DESC LIMIT 5 ; 

-85
select name from phones order by price desc limit 2 offset 1; 



-- ***************************SECTION-7*******************************
--87
--UNION -> find the all the rows of both query.
(SELECT * FROM products ORDER BY price DESC LIMIT 4)
UNION
(SELECT * FROM products ORDER BY price/weight DESC LIMIT 4);

--89
--INTERSECT -> find the rows that are common in both query.
(SELECT * FROM products ORDER BY price DESC LIMIT 4)
INTERSECT
(SELECT * FROM products ORDER BY price/weight DESC LIMIT 4);

--90
--EXCEPT -> find the rows that are present in first query but not in second.
(SELECT * FROM products ORDER BY price DESC LIMIT 4)
EXCEPT
(SELECT * FROM products ORDER BY price/weight DESC LIMIT 4);

--91
select manufacturer from phones where price < 170 
union
select manufacturer from phones group by manufacturer having count(*)>2; 
