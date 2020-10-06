/*Write a script that creates and calls a stored procedure named InsertCategory. This
procedure should attempt to insert a new category named “Flute” into the categories table.
If the insert is successful, the procedure should display this message: 1 row was inserted.
If the update is unsuccessful, the procedure should display this message: Row was not 
inserted - duplicate entry. [16 points] Take a screenshot of both a successful 
–Assignmnet6No2Success and unsuccessful –Assignment6No2Failed attempt at an insert. 
In addition, save your script and upload to your GitHub folder*/
/*block out the procedure to test the Call a second time*/

DELIMITER //

CREATE PROCEDURE InsertCategory()
BEGIN
	DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
    
    DECLARE CONTINUE HANDLER FOR 1062 
    SET duplicate_entry_for_key = TRUE;
		
	INSERT INTO categories (category_name) VALUES ('Flute');
        
    IF duplicate_entry_for_key = TRUE THEN
		SELECT 'Row was not inserted - duplicate entry.' AS message;
	ELSE
		SELECT '1 row was inserted.' AS message;
	END IF;
    END// 
CALL InsertCategory();