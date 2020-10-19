Executive Summary:

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

Conclusion:
