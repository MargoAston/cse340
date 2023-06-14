-- Insert new record
INSERT INTO account
	(account_firstname, account_lastname, account_email, account_password)
VALUES
	('Tony', 'Stark', 'tony@starkent.com', 'Iam!ronM@n')

-- Modify record
UPDATE
	account
SET
	account_type = 'Admin'
WHERE
	account_id = 2

-- Delete record
DELETE
FROM
	account
WHERE
	account_id = 2

-- Modify "GM Hummer"  
UPDATE
	inventory
SET
	inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE
	inv_id = 10

-- Update file paths
SELECT
	inv_make,
	inv_model,
	classification_name
FROM
	inventory
	
INNER JOIN classification
	ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport';
