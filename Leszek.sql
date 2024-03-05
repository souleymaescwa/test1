SELECT * 
FROM params a
WHERE app_code = 'PPC'
AND params_category = 'iSubCategory'
AND NOT EXISTS (SELECT *
 FROM fascicle_detail b
 WHERE a.params_code = b.subcategory_code)

 --750,720,050

 SELECT * 
 FROM fascicle_detail a
 WHERE not EXISTS
 (SELECT * 
 FROM params b
 WHERE app_code = 'PPC'
 AND params_category = 'iSubCategory'
 AND a.subcategory_code = b.params_code)

