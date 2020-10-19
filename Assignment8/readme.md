Executive Summary:

This assignment covered the topics of database administrator duties, log files, and database server variables. It 
also involved assigning priviledges to users and creating and assigning roles to users.

Database Administrator Responsibilities:

Database administrators are responsible for designing, creating, maintaining, securing, and backing up databases. 
Server maintenance includes configuring and monitoring the server, and keeping the log files in order. Keeping 
the databases secure involves maintaining user accounts with varying priviledges. Database administrators keep up
-to-date copies of the databases and can restore the database if it is compromised. They also have some other 
responsibilites such as starting and stopping the server when required.

Log Files:

A general log is a record of all of the times that users connected to the server. It includes the statements that 
the users sent to the server. 

An error log is a record of all of the errors encountered by a server as well as startup and shutdown messages.

A slow query log contains the SQL statements that take a long time to execute which may need to be rewritten.

A binary log contains a series of binary files that represent changes made to the database, which can be used to 
restore the database if it crashes.

A relay log is used to update a copy of a database by storing changes that have been made on the master copy.

Variables:

Status and system variables are used to monitor a database server.

Status variables contain information about the status of the MySQL server. They include things such as the number 
of bytes received from or sent to all clients and a count of how many times a certain type of statement was sent 
to the server.

System variables are used to configure the settings of the MySQL server. They are written to the configuration 
file which is checked at startup. They include settings such as whether or not to activate all user roles at 
connect time and the amount of time a server waits for an activity before closing it.

Privileges:

A.
/*Create a user named guitar_admin that can connect from the host Localhost with the password 'pa55word'
  Create a user named guitar_user that can connect from the host Localhost with the password 'pa55word'*/
CREATE USER guitar_admin@localhost IDENTIFIED BY 'pa55word';
CREATE USER guitar_user@localhost IDENTIFIED BY 'pa55word';
/*give guitar_admin all priviledges on the guitar database*/
GRANT ALL
ON guitar.*
TO guitar_admin@localhost;
/*give guitar_user the ability to edit data on the guitar database*/
GRANT SELECT, INSERT, UPDATE, DELETE
ON guitar.*
TO guitar_user@localhost;

B.
There are four levels of priviledges.
Column priviledges let users access only certain columns on a table.
A table priviledge give access to an entire table.
A database priviledge gives access to an entire database.
A global priviledge gives access to everything on the server.

C.
How would this code change to grant column privileges to the
customer first_name, last_name and email_address? 

To grant column privileges to the customer first_name, last_name, and email_address the following code 
could be used:

GRANT SELECT, INSERT, UPDATE, DELETE (first_name, last_name, email_address)
ON guitar.customers
TO guitar_user@localhost;

This could be done in order to prevent the user from modifying the database structure.


Roles:

A.
CREATE ROLE categories_update;

B.
GRANT SELECT, INSERT, UPDATE, DELETE
ON kelseyroberts_guitarshop.categories
TO categories_update;

GRANT categories_update TO user1;

C.
Roles are used to assign priviledges to users to increase security in a more efficient manor than granting and revoking priviledges one at a time.



Conclusion:

I learned a lot this week, as I did every week in this 8-week class. I will miss this class. It was more interesting than I expected. I hope I can 
write a game app one day and use what I've learned here to store player data.
