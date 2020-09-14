SELECT  COUNT(*) AS 'Number of Orders', SUM(ship_amount) AS 'Ship Value'
FROM orders;