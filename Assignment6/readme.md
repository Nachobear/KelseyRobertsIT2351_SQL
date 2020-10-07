Executive Summary: 

This assignment covers how to create and use stored procedures, which are programs stored on a database that can be used by applications or database administrators. There are three stored procedures in this assignment. The first uses the count function on the products table and tells the user either that there are under 17 rows or 17 or greater rows. The second inserts a row into the categories table and lets the user know if it was effective or not. The third accepts two parameters, an item_id number as an in parameter and a variable name as an out parameter. The procedure uses the item's price and discount amount to create a new price and returns it as the out parameter, which can then be used to tell the user the new price of the item.

Stored Programs:

The first procedure was pretty simple. I declared a variable called product_count_var and used a select statement to take the count of the products and assign it that variable. Then an if statement to return one of two messages depending on whether product_count_variable was greater than 17.

On the second stored procedure, I made a mistake the first time. I left out the "declare continue handler" line. I then had to write another script to delete the row I created and drop the procedure. It was a reset script that I ran every time I messed up the Assignment6no2 script. Once I added the contune handler line it worked just fine. This procedure is coded to display a message to the user that differs depending on whether or not it detects a duplicate row entry error.

The third procedure gave me some trouble because it took me a while to fully understand the syntax for out parameters. The first time I tried it, I wasn't passing a name for the out parameter variable in the call to the procedure. I assumed the variable name used inside of the procedure could be used in the final select statement.

Conclusion:

I'm not sure how much more stored procedures can do than queries, but I suspect they are more versatile. They seem especially useful when used from applications. 

