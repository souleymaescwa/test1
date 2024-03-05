SELECT * 
FROM aafile1

SELECT * 
FROM aafile2

UPDATE aafile1 SET item_descr = REPLACE(item_descr, '"', '')

UPDATE aafile2 SET [Description] = REPLACE([Description], '"', '')

UPDATE fascicle_header
SET item_descr = b.item_descr
FROM fascicle_header a, aafile1 b
WHERE a.item_code = b.item_code 

UPDATE params
SET params_descr = b.Description
FROM params a, aafile2 b
WHERE app_code = 'PPC'
AND params_category = 'iSubCategory'
AND a.params_code = b.Code 


