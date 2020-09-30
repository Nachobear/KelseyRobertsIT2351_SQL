Executive Summary: 

This assignment included an exercize in normalizing data, which is rearranging it among tables so that it uses up the least amount of space and resources. It also covered the creation of a database, which could have been done either by writing code or by creating a diagram in MySQL Workbench and forward engineering it into code. The last topic on the assignment was creation and use of views, which can be used similarly to tables. However, they actually contain a select statement that references the data of tables instead of storing the data themselves. They are included on the database script file and are sometimes used by applications that access the database.




Normalization / EER Model:

2.c:

To achieve first normal form, the data had to have a single scalar value in each column and no repeating columns that represent a set of values. It has no repeating columns but the column with classes had several values in many of the rows, so I fixed it by creating an extra row for each value beyond the first. In this form, it now needs two columns to identify each row, since the orignial primary key is repeated. Now the two primary keys are StudentID and Class(formerly called Classes).

To achieve second normal form, each non-key column needs to depend on the entire primary key. The columns 'Student Name', Address, Email, and Major depend only on the StudentID column(the first primary key). I broke them off into their own table that I call Student_Info, with StudentID as the only primary key. The first table only has two columns now, StudentID and Class. The first table I now call Student_Classes. So, to clarify there are two tables now. The Student_Info table consisting of the StudentID column as the primary key (because in this table there is only one instance of each StudentID), the 'Student Name' column, the Address column, the Email column, and the Major column. The Student_Classes Table consists of the Student_ID column (as a foreign key) and the Classes column. The Student_Classes table has a composite primary key right now which consists of the entire table. I decided not to add another ID column to have a single primary key because it would add to the volume of data. 

To achieve third normal form, each non-key column needs to depend only on the primary key. Our second normalized tables already meet that criteria, so no changes need to be made.




Conclusion:

I wrote out the tables on paper after each step of normalization. Then I spent a while creating my tables in the MySQL Model and EER diagram windows. I got very frustrated at one point because I initially created two databases on accident and I couldn't figure out how to delete the first one from the EER diagram window. Eventually I found out that it could be done from the MySQL Model window (exclusively it seems). After I finished designing the database, I went to forward engineer it into a script but it kept giving me a error, saying that I didn't have permission. I still couldn't resolve it after googling it, so I created the database again by typing it into a script, using the guitar database as a guide. I had to look up some syntax from the book, like declaring a composite primary key. At first it didn't work and I couldn't tell why. I copy pasted some of the code from the guitar database to a new script and renamed it testDB to experiment with code that I know worked originally. It taught me which pieces of the code were essential for it to work. It made me realize that I had all of the essential code in my assignment2 database, so I knew that it must be a syntax error. I blocked out lines of the data with comments and eventually I found the line where I had put in an extra piece of data on accident. After that the database worked just the way I had intended it to. Then I created an EER diagram using the assignment2 database script.

The view was easy to create, it was really just a select statement with an extra line of syntax before it.

Over the course of this assignment, I wrote many select statements just to get a better understanding of the data and the mechanics of the syntax. All of the testing made sql seem a little less intimidating. However, I still need more practice with normalization before I would feel comfortable with it. Overall, I feel that I learned a lot from this assignment.

