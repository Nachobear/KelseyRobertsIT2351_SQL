/*Write an UPDATE statement that modifies the NewProductPrices table. Change the
discount_percent to 28 for all products with a discount_percent of 30. Save the SQL
script, name the file YourNameUpdate.slq and, upload the file to your GitHub folder.
Output the new table, take a screenshot of your success and submit as in the prior tasks
(naming the file Assignment3No4.png). Note: be sure to select Edit/Preferences/SQL*/

UPDATE NewProductPrices
SET discount_percent = 28
WHERE discount_percent = 30;


Select *
from NewProductPrices;
