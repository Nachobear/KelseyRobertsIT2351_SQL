/*Write a script that creates and calls a stored function named new_price that calculates a
new price which is the item_price-discount_amount in the order_Items table. This function 
should accept one parameter for the item ID, and it should return the value of the new price
for that item. [12 points] Take a screenshot of the call to your function which will be 
within a SELECT statement, name the file Assignment6No3 and upload to your GitHub folder. 
Also, save your function script and upload to your GitHub folder. */

DELIMITER //

CREATE PROCEDURE new_price
(
	IN itemID INT,
    OUT newPrice DECIMAL(10,2)
)
BEGIN
SET newPrice = (SELECT item_price - discount_amount AS new_price 
		FROM order_items 
		WHERE item_id = itemID); 
END//

CALL new_price(/*put item_id here (1-12)*/, @newPrice);
SELECT @newPrice;
