-- ******************WHERE******************
Select * FROM phones WHERE price > 10000; 

Select * FROM phones WHERE price > 7000 AND price < 15000; 

Select * FROM phones WHERE price BETWEEN 5000 AND 15000; 

Select * FROM phones WHERE manufacturer IN ('Samsung', 'Apple'); 

Select phoneseries_name, price * units_sold AS Total_Revenue FROM phones WHERE price * units_sold > 300000; 


-- ******************UPDATE******************
UPDATE phones SET price = 25000 WHERE manufacturer = 'Apple';

UPDATE phones SET price = 22000 WHERE manufacturer = 'Samsung';


-- ******************UPDATE******************
DELETE FROM phones WHERE phoneSeries_name = 'Galaxy M';

