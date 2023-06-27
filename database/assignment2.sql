-- 1 Insert new record
INSERT INTO account
	(account_firstname, account_lastname, account_email, account_password)
VALUES
	('Tony', 'Stark', 'tony@starkent.com', 'Iam!ronM@n')
;

-- 2 Modify record
UPDATE
	account
SET
	account_type = 'Admin'
WHERE
	account_id = 2
;

-- 3 Delete record
DELETE
FROM
	account
WHERE
	account_id = 2
;

-- 4 Modify "GM Hummer"  
UPDATE
	inventory
SET
	inv_description = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE
	inv_id = 10
;


-- 5 Query inventory belonging to sport category
SELECT
	inv_make,
	inv_model,
	classification_name
FROM
	inventory
	
INNER JOIN classification
	ON inventory.classification_id = classification.classification_id
WHERE classification.classification_name = 'Sport'
;


--6 Update file path
UPDATE
	inventory
SET
	inv_image = REPLACE(inv_image, 'images/', 'images/vehicle/'),
	inv_thumbnail = REPLACE(inv_thumbnail, 'images/', 'images/vehicle/')
