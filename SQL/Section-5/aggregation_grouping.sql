--All tables are same as Section-4

SELECT user_id, COUNT(user_id) FROM comments GROUP BY user_id;

--'*' counts null values too
SELECT user_id, COUNT(*) FROM comments GROUP BY user_id;

-66
SELECT photo_id, COUNT(*) FROM comments GROUP BY photo_id; 

--67
select author_id, count(*) from books group by author_id;

--69
select name,count(*) from books join authors on authors.id = books.author_id group by name;

--72
SELECT photo_id, COUNT(*)FROM COMMENTS WHERE photo_id < 3 GROUP BY photo_id HAVING COUNT(*) > 2;

--73
SELECT user_id, COUNT(*) FROM COMMENTS WHERE photo_id <=50 GROUP BY user_id HAVING COUNT(*) > 20;

--74
select manufacturer, sum(price*units_sold) from phones group by manufacturer having sum(price*units_sold) > 2000000;


