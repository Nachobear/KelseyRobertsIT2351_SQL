/*Create a trigger named products_before_update that checks the new value for the list_price column of
the products table. This trigger should raise an appropriate error if the UnitPrice is greater than 
1200 or less than 100.
Test this trigger with an UPDATE statement.*/
DROP TRIGGER IF EXISTS products_before_update;

DELIMITER //

CREATE TRIGGER products_before_update
	BEFORE UPDATE ON products
    FOR EACH ROW
BEGIN
    IF NEW.list_price>100 AND NEW.list_price<1200 THEN
       SET NEW.list_price = NEW.list_price;
	ELSE 
		SIGNAL SQLSTATE 'HY000'
			SET MESSAGE_TEXT = 'new value must be greater than 100 and less than 1200.';
	END IF;
END//

UPDATE products
SET list_price = 2000
WHERE product_id = 1;

    