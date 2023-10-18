-- All the tables are same as Section-6


-- ***************************SECTION-9*******************************
--93
select name, price FROM products WHERE price > (SELECT MAX(price) FROM products WHERE department = 'Toys');

--94
select name, price, price / (select max(price) from phones) as price_ratio from phones;

--101
select max(average) as max_average_price
from (select manufacturer, avg(price) as average from phones group by manufacturer) as p; 

--105
select name from products where price > (select avg(price) from products )

--106
select name,price from phones where price > (select price from phones where name = 'S5620 Monte')

--108
SELECT name,department FROM products WHERE department NOT IN (SELECT department FROM products WHERE price < 100)

--109
SELECT name,department,price FROM products WHERE price > ALL
(SELECT price FROM products WHERE department = 'Industrial')

SELECT name,department,price FROM products WHERE price >
(SELECT MAX(price) FROM products WHERE department = 'Industrial')

--110
SELECT name,department,price FROM products WHERE price > SOME
(SELECT price FROM products WHERE department = 'Industrial')

--111
select name from phones where price > all (select price from phones where manufacturer = 'Samsung')

--113
SELECT name,department,price FROM products as p1 WHERE p1.price = (SELECT MAX(price) FROM products as p2
WHERE p1.department = p2.department)

--116
select 
(select max(price) from phones) as max_price,
(select min(price) from phones) as min_price,
(select avg(price) from phones) as avg_price;



-- ***************************SECTION-10*******************************
--118
SELECT COUNT(DISTINCT name) FROM products;

--119
select count(distinct manufacturer) from phones;


-- ***************************SECTION-10*******************************
--121
SELECT name,department,weight,GREATEST(40,3*weight) as shipping_cost FROM products; 

--122
SELECT LEAST(10,15,30);

--123
SELECT name, department, weight,
CASE
    WHEN weight < 15 THEN 'low'
    WHEN weight < 25 THEN 'medium'
    ELSE 'high'
END as weight_status
FROM products;