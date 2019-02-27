--Insert generic companies--
INSERT INTO company
	(id, name, address)
VALUES (1, 'Amazon', '101 Amazon Rd.' );

INSERT INTO company
	(id, name, address)
VALUES (2, 'Google', '1 Google St.' );

INSERT INTO company
	(id, name, address)
VALUES (3, 'Not_relevant_company', '322 McGill Lane' );

INSERT INTO company
	(id, name, address)
VALUES (4, 'Apple', '10 Super Place' );

INSERT INTO company
	(id, name, address)
VALUES (5, 'Facebook', '666 Normal St.' );

--Insert real estate companies--

INSERT INTO company
	(id, name, address)
VALUES (6, 'Boys Real Estate', '101 Nunya Buisness Rd.');
INSERT INTO real_estate_firm
	(brokerage_number, id)
VALUES ('8838', 6);


--ETC--

INSERT INTO manager (name)
VALUES ("Terrence Gao");

INSERT INTO apt_building (address)
VALUES ("3645 Lorne Avenue");

INSERT INTO agent (name, company_id)
VALUES ("Seasy Huang", "1");

INSERT INTO listing 
	(address, build_date, size, list_price)
VALUES ("3645 Lorne Avenue", "1949-12-01", "500", "800000");