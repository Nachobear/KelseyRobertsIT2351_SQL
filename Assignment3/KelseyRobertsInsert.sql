/*Using your guitar database write an INSERT statement that adds this row to the
customers table: your name, email and a password that you make up. Save your query
to a script named YourNameInsert.sql and upload to your GitHub folder. Take a
screenshot of the output of the table including your new record, name the
file Assignment3No2.png and upload to your assignment folder in GitHub.*/

use kelseyroberts_guitar_shop;
INSERT INTO customers (customer_id, email_address, password, first_name, last_name, shipping_address_id,
billing_address_id)
VALUES (default, 'nachobear@gmail.com', 'Nach0b34r', 'Kelsey', 'Roberts', 13, 14);

SELECT *
FROM customers;


