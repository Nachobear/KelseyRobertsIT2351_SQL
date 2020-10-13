DELIMITER //

CREATE PROCEDURE deleteCustomer(customerID int)
BEGIN
	DECLARE sql_error TINYINT DEFAULT FALSE;
    
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
			SET sql_error = TRUE;
            
		START TRANSACTION;
        
        DELETE FROM order_items
        WHERE order_id IN (SELECT order_id FROM orders
							WHERE customer_id = customerID);
                            
		DELETE FROM orders
        WHERE customer_id = customerID;
        
		DELETE FROM addresses
        WHERE customer_id = customerID;
        
        DELETE FROM customers
        WHERE customer_id = customerID;
        

		IF sql_error = FALSE THEN
			COMMIT;
            SELECT 'The customer was removed from the database.';
		ELSE 
			ROLLBACK;
            SELECT 'Encountered an error. Transaction was rolled back';
		END IF;
	END//
            