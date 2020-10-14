Executive Summary:

This assignment covered three main topics. The first was using a transaction to group related data manipulation statements to delete a customer from a database. The second was setting up a trigger to validate input before accepting it as a new value in a table. The third was finding a real-world use for an event, which is a procedure that is activated at a specific time.

Stored Programs:

1.

To delete a customer from the guitar_shop database, I would make a procedure called deleteCustomer that would accept an integer as a parameter that would correspond with a customer_id. Inside of the procedure there would be a transaction that would check for errors and rollback if an error is detected. That is because the data would be compromised if only some of statements executed. In the body of the transaction would be four delete statements that would delete rows from the customers, addresses, orders, and order_items tables that correspond with the customer_id. (see deleteCustomer.sql script)

2.

This trigger was easy to figure out with the example from the book, but I realize now I could have accomplished the same thing with less code. I could have replaced everything in between BEGIN and END with: 
IF NOT BETWEEN 100 AND 1200 THEN 
  SIGNAL SQLSTATE 'HY000'
  SET MESSAGE_TEXT = 'new value must be greater than 100 and less than 1200.';
END IF;

3.a.

A bakery could have seasonal items on the menu. In their database they could have a table called 'menu_items' with a column called 'is_active' that holds a true/false value that represents whether or not it is currently being sold. They could have 12 events that each run once a year, on the first of each month to change the active status of items. One could be called 'october_menu_update' that makes the menu items 'pumkin_pie', 'jack_o_lantern_cookie', and 'ghost_cookie' active and the item 'frosted_sugar_cookie' inactive.

DELIMITER //
CREATE EVENT october_menu_update
ON SCHEDULE EVERY 1 YEAR
STARTS '2020-10-01'
DO BEGIN
  UPDATE menu_items
  SET is_active = NOT(is_active)
  WHERE item_name = 'pumpkin_pie' OR item_name = 'jack_o_lantern_cookie' OR item_name = 'ghost_cookie' OR item_name = 'frosted_sugar_cookie';
END// 
 

Conclusion:

The only thing I was unsure of in this assignment was if I should have set the isolation level on the deleteCustomer transaction to serializable to prevent phantom reads or not. I wasn't sure if it was necessary. 
