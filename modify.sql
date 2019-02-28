--relations used: listing
--Change the list price of a listing
UPDATE listing SET list_price = 115000 WHERE address = '404 Apprtment Building St. App. 101';

--relations used: agents, buys, sells
--Move agents who have made a deal with a value over 1,000,000 to the Best Real Estate company
UPDATE agent SET company_id = 8 WHERE name IN
	(SELECT buys.aname FROM buys, sells
	 WHERE buys.price > 1000000 OR sells.price > 1000000 GROUP BY buys.aname);

	