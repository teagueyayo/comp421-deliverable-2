--relations used: customer, buys, house
--return the name of any customer has bought a house for > $1M
SELECT name
FROM customer
WHERE sin IN
	(SELECT B.csin
	 FROM buys B, house H
	 WHERE  (B.price >= 1000000) AND
	        (H.address = B.laddress))

--relations used: buys
--return total sales amount per agent sorted in descending order
SELECT aname, SUM(price)
FROM buys
GROUP BY aname ORDER BY SUM(price) DESC;

--relations used: real_estate_firm, buys, agent, company
--return total sales from every real estate in descending order
SELECT C.name, SUM(B.price)
FROM real_estate_firm F, buys B, agent A, company C
WHERE (A.company_id = F.id) AND (C.id = A.company_id)
GROUP BY C.id ORDER BY SUM(B.price) DESC;

--relations used: managed_by, apt_unit, listing
--return name of managet of the top 3 most expensive units
SELECT mname, baddress
FROM managed_by
WHERE baddress IN
	(SELECT A.building
	FROM apt_unit A, listing L
	WHERE (A.address = L.address)
	ORDER BY L.list_price DESC
	LIMIT 3);

--relations used: real_estate firm, buys, agent, company
--return all sales from every agent in every company, rolled up by company
SELECT C.name, B.aname, SUM(B.price)
FROM real_estate_firm F, buys B, agent A, company C
WHERE (A.company_id = F.id) AND (C.id = A.company_id)
GROUP BY ROLLUP(C.name, B.aname);
