/*Write a script that creates and calls a stored procedure named ProductCount. This stored procedure 
should declare a variable and set it to the count of all products in the Products table. If the count
is greater than or equal to 17, the stored procedure should display a message that says, “The number
of products is greater than or equal to 17”. Otherwise, it should say, “The number of products is 
less than 17”. [12 points] Take a screenshot of your output, name it Assignment6No1 and upload to your
GitHub folder. In addition, save your script and upload to your GitHub folder. */

USE kelseyroberts_guitar_shop; 
DROP PROCEDURE IF EXISTS ProductCount; 
/*Change statement delimiter from semicolon to double front slash */
DELIMITER // 
CREATE PROCEDURE ProductCount() 
BEGIN 
    DECLARE product_count_var INT;	

    SELECT COUNT(product_id)
	INTO product_count_var 
	FROM products;
	
    IF product_count_var > 17 THEN 
		SELECT 'The number of products is greater than or equal to 17' AS message; 
	ELSE 
		SELECT 'The number of products is less than 17' AS message; 
	END IF; 
END// 

/*Change statement delimiter from double front slash to semicolon */

DELIMITER ;

 CALL ProductCount();