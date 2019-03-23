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


INSERT INTO company
	(id, name, address)
VALUES (7, 'Girls Real Estate', '202 Nice St.');
INSERT INTO real_estate_firm
	(brokerage_number, id)
VALUES ('9392', 7);


INSERT INTO company
	(id, name, address)
VALUES (8, 'Best Real Estate', '122 Youn St.');
INSERT INTO real_estate_firm
	(brokerage_number, id)
VALUES ('1023', 8);


INSERT INTO company
	(id, name, address)
VALUES (9, 'Worst Real Estate', '200 Durocher St.');
INSERT INTO real_estate_firm
	(brokerage_number, id)
VALUES ('2302', 9);


INSERT INTO company
	(id, name, address)
VALUES (10, 'Jump Real Estate', '2003 Elm Rd.');
INSERT INTO real_estate_firm
	(brokerage_number, id)
VALUES ('5304', 10);

--Insert management firms--

INSERT INTO company
	(id, name, address)
VALUES (11, 'Cool Management', '203 Alpine Rd.');
INSERT INTO management_firm
	(id)
VALUES (11);

INSERT INTO company
	(id, name, address)
VALUES (12, 'Okay Management', '3 Westin Ave.');
INSERT INTO management_firm
	(id)
VALUES (12);

INSERT INTO company
	(id, name, address)
VALUES (13, 'Hillsdale Management', '87 German Rd.');
INSERT INTO management_firm
	(id)
VALUES (13);

INSERT INTO company
	(id, name, address)
VALUES (14, 'Bell Management', '2903 Guam St.');
INSERT INTO management_firm
	(id)
VALUES (14);

INSERT INTO company
	(id, name, address)
VALUES (15, 'Terrible Management', '8322 John St.');
INSERT INTO management_firm
	(id)
VALUES (15);


--Insert managers--

INSERT INTO manager
	(name)
VALUES ('New Manager');


--Insert appartment buildings--

INSERT INTO apt_building
	(address)
VALUES ('101 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('202 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('303 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('404 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('505 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('606 Apprtment Building St.');

INSERT INTO apt_building
	(address)
VALUES ('101 Generic Listing St.');

--Insert apartment units--

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('404 Apprtment Building St. App. 101', '2018-12-19', 800, 120000);
INSERT INTO apt_unit
	(building, address)
VALUES ('404 Apprtment Building St.', '404 Apprtment Building St. App. 101');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('404 Apprtment Building St. App. 201', '2018-12-19', 1200, 210000);
INSERT INTO apt_unit
	(building, address)
VALUES ('404 Apprtment Building St.', '404 Apprtment Building St. App. 201');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('303 Apprtment Building St. App. 1A', '2013-01-02', 1600, 340000);
INSERT INTO apt_unit
	(building, address)
VALUES ('303 Apprtment Building St.', '303 Apprtment Building St. App. 1A');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('505 Apprtment Building St. App. 32', '2002-07-09', 1150, 230000);
INSERT INTO apt_unit
	(building, address)
VALUES ('505 Apprtment Building St.', '505 Apprtment Building St. App. 32');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('101 Apprtment Building St. App. 1101', '1998-03-24', 600, 90000);
INSERT INTO apt_unit
	(building, address)
VALUES ('101 Apprtment Building St.', '101 Apprtment Building St. App. 1101');


--Insert houses--

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('202 House Rd.', '1998-01-02', 2400, 350000);
INSERT INTO house
	(stories, lot_size, address)
VALUES (2, 2500, '202 House Rd.');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('101 House Rd.', '2003-10-23', 2100, 320000);
INSERT INTO house
	(stories, lot_size, address)
VALUES (3, 2700, '101 House Rd.');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('303 House Rd.', '2013-09-27', 5300, 3500000);
INSERT INTO house
	(stories, lot_size, address)
VALUES (4, 7000, '303 House Rd.');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('404 House Rd.', '2017-01-02', 3400, 1200000);
INSERT INTO house
	(stories, lot_size, address)
VALUES (4, 5700, '404 House Rd.');

INSERT INTO listing
	(address, build_date, size, list_price)
VALUES ('502 House Rd.', '1967-02-12', 3100, 490000);
INSERT INTO house
	(stories, lot_size, address)
VALUES (3, 4100, '502 House Rd.');


--Insert customers--

INSERT INTO customer
	(sin, name)
VALUES (2919203, 'Customer Bill');

INSERT INTO customer
	(sin, name)
VALUES (2919204, 'Customer Sarah');

INSERT INTO customer
	(sin, name)
VALUES (2919205, 'Customer Jean');

INSERT INTO customer
	(sin, name)
VALUES (2919609, 'Customer Kate');

INSERT INTO customer
	(sin, name)
VALUES (1023928, 'Customer Jordan');


--Insert agents--

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Rome', 6, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Dave', 7, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Josh', 6, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Simon', 9, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Katie', 8, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Richard', 8, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Sarah', 8, true);

INSERT INTO agent
	(name, company_id, active)
VALUES ('Agent Mike', 9, true);


--Insert buys--

INSERT INTO buys
	(price, aname, csin, laddress)
VALUES (1150000, 'Agent Dave', 2919203, '404 House Rd.');

INSERT INTO buys
	(price, aname, csin, laddress)
VALUES (3450000, 'Agent Josh', 2919205, '303 House Rd.');

INSERT INTO buys
	(price, aname, csin, laddress)
VALUES (349000, 'Agent Dave', 2919609, '303 Apprtment Building St. App. 1A');

INSERT INTO buys
	(price, aname, csin, laddress)
VALUES (295000, 'Agent Katie', 1023928, '101 House Rd.');

INSERT INTO buys
	(price, aname, csin, laddress)
VALUES (389000, 'Agent Simon', 2919204, '303 Apprtment Building St. App. 1A');


--Insert sells --

INSERT INTO sells
	(price, aname, csin, laddress)
VALUES (295000, 'Agent Simon', 2919204, '101 House Rd.');

INSERT INTO sells --Not matching--
	(price, aname, csin, laddress)
VALUES (3450000, 'Agent Josh', 2919203, '303 House Rd.');

INSERT INTO sells
	(price, aname, csin, laddress)
VALUES (349000, 'Agent Katie', 2919205, '303 Apprtment Building St. App. 1A');

INSERT INTO sells
	(price, aname, csin, laddress)
VALUES (389000, 'Agent Dave', 1023928, '303 Apprtment Building St. App. 1A');

INSERT INTO sells
	(price, aname, csin, laddress)
VALUES (1150000, 'Agent Rome', 2919609, '404 House Rd.');


--Insert partners--

INSERT INTO partners
	(aname1, aname2)
VALUES ('Agent Rome', 'Agent Dave');

INSERT INTO partners
	(aname1, aname2)
VALUES ('Agent Rome', 'Agent Josh');

INSERT INTO partners
	(aname1, aname2)
VALUES ('Agent Simon', 'Agent Katie');


--Insert managed by--

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (11, 'David The King Manager', '303 Apprtment Building St.');

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (11, 'David The King Manager', '101 Apprtment Building St.');

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (12, 'Seasy Manager', '202 Apprtment Building St.');

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (13, 'Will Manager', '404 Apprtment Building St.');

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (14, 'Aidon Manager', '505 Apprtment Building St.');

INSERT INTO managed_by
	(mfirm_id, mname, baddress)
VALUES (15, 'Terry Manager', '606 Apprtment Building St.');
