--relations used: listing
--Change the list price of a listing
UPDATE listing SET list_price = 115000 WHERE address = '404 Apprtment Building St. App. 101';

--relations used: agents, buys, sells
--Move agents who have made deals with value over 1,000,000 to the Best Real Estate company
UPDATE agent SET company_id = 8 WHERE name IN
	(SELECT buys.aname FROM buys, sells
	 WHERE buys.price > 1000000 OR sells.price > 1000000 GROUP BY buys.aname);

--relations used: partners, agent
--Delete partners who do not work at the same firm
DELETE FROM partners p1 WHERE (p1.aname1, p1.aname2) NOT IN 
	(SELECT a1.name, a2.name FROM agent a1, agent a2
		WHERE a1.company_id = a2.company_id
		AND a1.name <> a2.name);

--relations used: managers, managed_by
--Delete managers who are not managing any buildings
DELETE FROM manager WHERE name NOT IN
	(SELECT mname FROM managed_by)