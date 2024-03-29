Executive Summary:

This assignment covered techniques on how to write subqueries, specifically how to replace certain joins with subqueries. It also involved functions used to convert data, such as formatting numbers and breaking down strings into substrings.



Query Review:

For the first query, I had to review the IN operator and aggregate functions. I had to understand what the original query was doing before I could rewrite it with the IN operator in place of the join. I interpreted the original query to mean "Show a result set that includes the names of all of the instrument catagories that appear in the products table. Every category name should only appear once." At first my WHERE line read: "WHERE category_id IN (SELECT * FROM products)" and it didn't work. I was able to realize from the error message that I needed to specify the column name in the subquery. I changed the WHERE line to: "WHERE category_id IN (SELECT category_id FROM products)" and it worked just fine.

I had a huge struggle with the second query. It seems that the question is asking to combine columns from two different tables in a result set without a join, which I can't figure out how to do. (I've been stuck on it for hours.) Maybe it is actually asking for list_price instead of item_price, but that is not how the question is worded. Finally, I just used list_price in the result set. The book says an advantage of joins is that the select statement can use columns from both tables, which makes it seem like it cannot be done without a join, but maybe I'm wrong. The item_price column in the order_items table seems to have all of the same values as the list_price column in the products table, but one is not the foreign key of the other, so I would think that they aren't the same thing. I hope that in the end I did it right.

The third query was very easy. I just looked up the syntax in the book on how to convert data and it only took two tries for the query to work.

I had no difficulty with the fourth query, either. I had to look up the syntax in the book, especially for the substring parts, but it all worked without a problem.



Conclusion:

Replacing joins with subqueries is a skill I need to work on. It doesn't come naturally to me. I need to figure out some kind of logical process for it. Complicated joins and subqueries are my weakness because I have a bad short-term memory. When I try to figure out some of the more complex questions, I write out the select statement in pieces as smaller select statements to test them. To make sure that my average function worked properly, I actually looked at the whole table and did the calculation on a calculator. Several times I looked at the whole tables to check if my queries were missing any results that should have satisfied the conditions. The numeric and string functions were easy to work with. 
