/*Write a SELECT statement that returns one row for each category that has products with these
columns:
a) The Category Name column from the Categories table
b) The count of the products in the Products table
c) The price of the most expensive product in the Products table
d) Sort the result set so the category with the most products appears first.*/

SELECT categories.category_name as 'Catagory Name', COUNT(products.product_id) as 'Number of Products',
MAX(products.list_price * (1-(products.discount_percent/100))) AS 'Price of Most Expensive Item'
FROM categories
JOIN products ON categories.category_id
WHERE categories.category_id = products.category_id
GROUP BY categories.category_id
ORDER BY 'Number of Products' DESC;
