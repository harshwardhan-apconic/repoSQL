-- ******************CREATE TABLE******************
CREATE TABLE phones (
    phoneSeries_name VARCHAR(20),
    manufacturer VARCHAR(20),
    price INTEGER,
    units_sold INTEGER
);

-- ******************INSERT INTO******************
INSERT INTO
    phones(
        phoneSeries_name,
        manufacturer,
        price,
        units_sold
    )
VALUES
    ('Galaxy S', 'Samsung', 10000, 50);

INSERT INTO
    phones(
        phoneSeries_name,
        manufacturer,
        price,
        units_sold
    )
VALUES
    ('Galaxy M', 'Samsung', 8000, 30);

INSERT INTO
    phones(
        phoneSeries_name,
        manufacturer,
        price,
        units_sold
    )
VALUES
    ('Iphone', 'Apple', 20000, 60);

INSERT INTO
    phones(
        phoneSeries_name,
        manufacturer,
        price,
        units_sold
    )
VALUES
    ('Redmi Note', 'Xiaomi', 5000, 25);


-- ******************SELECT******************
Select * FROM phones;

Select phoneseries_name,price FROM phones;

Select phoneSeries_name, price * units_sold AS Total_Revenue FROM phones;

Select phoneSeries_name ||', '|| manufacturer FROM phones;

Select CONCAT(UPPER(phoneSeries_name), ', ', UPPER(manufacturer)) FROM phones;