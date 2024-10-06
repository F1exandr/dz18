SELECT * FROM customers; --1
SELECT contact_name, city FROM customers; -- 2
SELECT order_id, (order_date - shipped_date) FROM orders; -- 3
SELECT DISTINCT city FROM customers; -- 4
SELECT DISTINCT city, country FROM customers; -- 5
SELECT COUNT(*) FROM customers; -- 6
SELECT COUNT(DISTINCT country) FROM customers; -- 7
SELECT * FROM orders
WHERE ship_country IN ('France', 'Austria', 'Spain'); -- 8
SELECT * FROM orders
ORDER BY required_date DESC, shipped_date ASC; -- 9
SELECT MIN(units_in_stock)
FROM products
WHERE units_in_stock > 30; -- 10
SELECT MAX(units_in_stock)
FROM products
WHERE units_in_stock > 30; -- 11
SELECT AVG(shipped_date - order_date)
FROM orders
WHERE ship_country = 'USA'; -- 12
SELECT SUM(units_in_stock * unit_price)
FROM products
WHERE discontinued = 0; -- 13
