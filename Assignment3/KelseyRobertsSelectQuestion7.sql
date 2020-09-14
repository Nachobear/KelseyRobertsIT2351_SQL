/*Write a SELECT statement that answers this question: What is the total quantity purchased for
each product within each category? Return these columns (10 points):
a) The CategoryName column from the category table
b) The ProductName column from the products table
c) The total quantity purchased for each product with orders in the OrderDetails table
d) Use the WITH ROLLUP operator to include rows that give a summary for each
category name as well as a row that gives the grand total. Be sure to include if
statements to control the subtotal and grand total lines*/

SELECT
IF(GROUPING(categories.category_name) = 1, 'Grand Total', categories.category_name) 
AS 'Category Name', 
IF(GROUPING(products.product_name) = 1, 'Category Total', products.product_name) 
AS 'Product Name',
SUM(order_items.quantity) AS 'Total Quantity Purchased' 
FROM categories 
JOIN products ON categories.category_id = products.category_id
JOIN order_items ON products.product_id = order_items.product_id
group by category_name, product_name WITH ROLLUP;