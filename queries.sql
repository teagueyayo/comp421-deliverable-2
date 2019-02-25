SELECT name 
FROM customer 
WHERE sin IN  
	(SELECT B.csin 
	 FROM buys B, house H
	 WHERE  (B.price >= 1000000) AND 
	        (H.address = B.laddress))