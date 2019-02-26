SELECT name 
FROM customer 
WHERE sin IN  
	(SELECT B.csin 
	 FROM buys B, house H
	 WHERE  (B.price >= 1000000) AND 
	        (H.address = B.laddress))

SELECT aame, SUM(price)
FROM buys 
GROUP BY aame


SELECT F.name, B.SUM(price)
FROM real_estate_firm F, buys B, agent A
WHERE (A.company_id == F.id)
GROUP BY F.id

SELECT A.address 
FROM apt_building A, listing L
WHERE (A.address == L.address) 
ORDER BY L.price DESC	
LIMIT 5

