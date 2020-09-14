 Executive Summary:
 
 Query Review:
 
 Getting the create_my_guitar_shop file from the website, editing it and opening it in MySQL went smoothly. I refreshed the schema window and the database was there.
 
 I made a few mistakes with my first insert statement, creating messy entries in my result set. I then learned that to start fresh, I had to right-click on the database in the schemas window and click "drop schema" and "drop now" to clear out its data and then I would run the create_my_guitar_shop file again to recreate it. I think the "drop database" line in the create_my_guitar_shop file wasn't getting rid of the data. After that I wrote a select statement to show a result set of the whole table so I could check if it worked. It took me a few attempts to get the line added correctly. At first I thought it was a mistake that the address ids were null but then I realized that that was what they were supposed to be.
 
 I made a copy of the products table, called NewProductPrices, and queried the entire new table to make sure it worked, which it did.
 
 Then I wrote my first update statement. As the book recommended, I wrote a select statement first to test that my where clause worked as I intended it to. I also wrote a select statement querying he whole table after the update statement to see the updated table. It worked on the first attempt.
 
 I had no problems with my first implementation of the count() and sum() parameters in the fifth question. I wrote a select statement for the whole order table and I manually added up the ship_amount column and counted the rows to make sure that my first query had worked correctly.
 
 The query for question 6 is the one that I was stuck on for about an hour. The query was supposed to give the most expensive item in each category that had products. There were 10 rows in the products table and 4 in the categories table but when I combined them I got 40 rows and the results for each category were the same, which I knew was incorrect because I looked at the products table. Eventually I realized that I was missing the line: "WHERE categories.category_id = products.category_id". I had forgotten I needed to write that. Now I remember it was in an earlier chapter. I factored the discount percent into my query when determining the most expensive item in each category.
 
 
 
 
 
 
 
 
 Conclusion:
 
 I ran into some obstacles in this assignment. I queryed the tables individually and got familiar with them. I experimented with earlier concepts and eventually figured out what I was doing wrong. I think I learned more in this assignment than in the last two. 
 
