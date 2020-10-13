Executive Summary:

Stored Programs:

To delete a customer from the guitar_shop database, I would make a procedure called deleteCustomer that would accept an integer as a parameter that would correspond with a customer_id. Inside of the procedure there would be a transaction that would check for errors and rollback if an error is detected. That is because the data would be compromised if only some of statements executed. In the body of the transaction would be four delete statements that would delete rows from the customers, addresses, orders, and order_items tables that correspond with the customer_id. (see deleteCustomer.sql script)





Conclusion:
