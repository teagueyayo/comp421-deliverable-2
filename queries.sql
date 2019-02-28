--return the name of any customer has bought a house for > $1M
SELECT name
FROM customer
WHERE sin IN
	(SELECT B.csin
	 FROM buys B, house H
	 WHERE  (B.price >= 1000000) AND
	        (H.address = B.laddress))

--return total sales amount per agent sorted in descending order
SELECT aname, SUM(price)
FROM buys
GROUP BY aname ORDER BY SUM(price) DESC;

--return total sales from every real estate in descending order
SELECT C.name, SUM(B.price) --TODO
FROM real_estate_firm F, buys B, agent A, company C
WHERE (A.company_id = F.id) AND (C.id = A.company_id)
GROUP BY C.id ORDER BY sum(B.price) DESC;

--return address of the apt buildings with the top 3 most expensive units
SELECT A.address --TODO fix
FROM apt_building A, listing L
WHERE (A.address = L.address)
ORDER BY L.list_price DESC
LIMIT 3;
