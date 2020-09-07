Executive Summary:

This assignment was about writing SQL inner join select statements to retrieve result sets from a database. As many as four tables were joined together on one of the queries. This assignment also involved using aliases for column names and even for new columns that were created by performing operations on the entries in the other columns. Some of the operations were arithmetic and others were functions such as concatenation and rounding to two decimal places.


Query Review:

I started out this assignment by trying to "wing it" but eventually I had to write a diagram of the tables in the OrderManagement database because it was too much to hold in memory. Writing out the tables let me realize what their primary and foreign keys were, which helped me realize what columns were best to join the tables at. On most of the queries I would snip a piece of the digital textbook for reference.

I had no problem with the first query. I wrote out the arithmetic expression in the WHERE clause and it worked on the first try.

The second one I tried to write without reference but it didn't work. I realized that I was concatenating the wrong way, using +s instead of just commas. Once I fixed that it worked fine.

The third query was not hard to figure out either. I ended up rewriting it later though as I realized that my first version had a comma where the second slash should have been in the formatted date.

The fourth query was the first join. It worked on my second try but I was not confident that I had chosen the right column to perform the join on. In the first try I had used the alias for customer_last_name as the sort condition but it didn't work. I'm still not sure why. I know the example in the book had a one-word alias but mine was two in quotations so maybe that had something to do with it. I used customer_last_name and it worked as intended.

In the fifth query, the concatenation was easy but I became overwhelmed when the second join wasn't working. I was getting the error that one of my terms was ambiguous and I didn't get why because i was using the table names as well as the column names in the ON part of the JOIN statement. I wrote out the diagram of the tables at that point. It helped me understand a lot but I realized I had chosen the correct columns to join from the beginning. Eventually I realized that upon joining the third table that the first instance of "order_id" in the beginning of the select statement had become ambiguous so I changed it to "orders.order_id" and then my query worked.

For the sixth query, I added the join to the items table and replaced the item_number column with the artist column.

For the seventh query, I wrote an arithmetic expression using the quantity and price columns to come up with a new column for the total. I wrote the WHERE clause to only display rows for orders that had not yet been shipped.

The final query wasn't built on the others. I joined the items and order_details tables. Another column was created using an arithmetic expression to calcualte the total with tax. At first my result set didn't look right and I realized I had put an 80% tax rate instead of 8%. 


Conclusion:

I learned two important lessons for working with SQL in this assignment. The first is that it is best to combine tables using the primary key of the first and the foreign key of the second. The second lesson was the realization that joining another table can cause your previously written functioning code to stop working by making it ambiguous. Now I know what to do when I encounter error 1052. I am also glad I got practice with the syntax of writing select statements. They can be quite complicated. I know there were more complicated types of select statements covered in chapter four, such as outer joins, self-joins, and unions but just these inner join problems had me stumped at times. I will need to a lot of practice with these if I ever want to be comfortable with them.
