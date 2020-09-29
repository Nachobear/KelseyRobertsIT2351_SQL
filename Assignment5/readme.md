Executive Summary:

Normalization / EER Model:

2.C 

To achieve first normal form, the data had to have a single scalar value in each column and no repeating columns that represent a set of values. It has no repeating columns but the column with classes had several values in many of the rows, so I fixed it by creating an extra row for each value beyond the first. In this form, it now needs two columns to identify each row, since the orignial primary key is repeated. Now the two primary keys are StudentID and Class(formerly called Classes).

To achieve second normal form, each non-key column needs to depend on the entire primary key. The columns 'Student Name', Address, Email, and Major depend only on the StudentID column(the first primary key). I broke them off into their own table that I call Student_Info, with StudentID as the only primary key. The first table only has two columns now, StudentID and Class. The first table I now call Student_Classes. So, to clarify there are two tables now. The Student_Info table consisting of the StudentID column as the primary key (because in this table there is only one instance of each StudentID), the 'Student Name' column, the Address column, the Email column, and the Major column. The Student_Classes Table consists of the Student_ID column (as a foreign key) and the Classes column. The Student_Classes table has a composite primary key right now which consists of the entire table. I decided not to add another ID column to have a single primary key because it would add to the volume of data. 

To achieve third normal form, each non-key column needs to depend only on the primary key. Our second normalized tables already meet that criteria, so no changes need to be made.

Conclusion:
