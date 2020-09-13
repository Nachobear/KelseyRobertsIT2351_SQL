 Executive Summary:
 
 Query Review:
 
 Getting the create_my_guitar_shop file from the website, editing it and opening it in MySQL went smoothly. I refreshed the schema window and the database was there.
 
 I made a few mistakes with my first insert statement, creating messy entries in my result set. I then learned that to start fresh, I had to right-click on the database in the schemas window and click "drop schema" and "drop now" to clear out its data and then I would run the create_my_guitar_shop file again to recreate it. I think the "drop database" line in the create_my_guitar_shop file wasn't getting rid of the data. After that I wrote a select statement to show a result set of the whole table so I could check if it worked. It took me a few attempts to get the line added correctly. At first I thought it was a mistake that the address ids were null but then I realized that that was what they were supposed to be.
 
 I made a copy of the products table, called NewProductPrices, and queried the entire new table to make sure it worked, which it did.
 
 Then I wrote my first update statement. As the book reccomended, I wrote a select statement first to test that my where clause worked as I intended it to. I also wrote a select statement querying he whole table after the update statement to see the updated table. It worked on the first attempt.
 
 
 
 
 
 
 Conclusion:
 
 
