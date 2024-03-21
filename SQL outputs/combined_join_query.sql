SELECT * FROM 
campaign camp
JOIN contacts cont
on camp.contact_id = cont.contact_id
JOIN category cat
on camp.category_id = cat.category_id
JOIN subcategory sub
on camp.subcategory_id = sub.subcategory_id