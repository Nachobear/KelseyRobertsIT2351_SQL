Executive Summary:

Stored Programs:

1.
To delete a customer from the guitar_shop database, I would make a procedure called deleteCustomer that would accept an integer as a parameter that would correspond with a customer_id. Inside of the procedure there would be a transaction that would check for errors and rollback if an error is detected. That is because the data would be compromised if only some of statements executed. In the body of the transaction would be four delete statements that would delete rows from the customers, addresses, orders, and order_items tables that correspond with the customer_id. (see deleteCustomer.sql script)

2.


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
s
