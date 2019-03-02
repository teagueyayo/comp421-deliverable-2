-- All responses logged in log > Q7_views.log

-- VIEW 1 ----------------------------------
-- relations used: company, real_estate_firm
-- creates a view storing information about all companies that are not real estate firms
CREATE VIEW v_company_not_rsf (cid, cname, caddress)
AS
SELECT *
FROM company C
WHERE C.id NOT IN (
	SELECT C.id
	FROM real_estate_firm R
	WHERE C.id = R.id
)

-- query for VIEW 1:
-- result: management_firm id and name and manager of firm
SELECT DISTINCT MB.mfirm_id, MB.mname, V.cname
FROM v_company_not_rsf V, managed_by MB
WHERE V.cid = MB.mfirm_id
GROUP BY MB.mfirm_id, MB.mname, V.cname

-- try SQL UPDATE for VIEW 1:
-- changes the cids (1 to 5, of "Amazon", "Google", "Not_relevant_company", "Apple", "Facebook")
UPDATE v_company_not_rsf
SET cid = cid + 100
WHERE cid < 6;

---- RESET:
-- UPDATE v_company_not_rsf
-- SET cid = cid - 100
-- WHERE cid > 100;

-- VIEW 2 ----------------------------------
-- relations used: agents, sells
-- creates a view storing name and company of inactive agents
CREATE VIEW v_inactive_agents (name, company_id)
AS
SELECT A.name, A.company_id
FROM agent A
WHERE A.name NOT IN (
	SELECT S.aname
	FROM sells S
	WHERE S.aname = A.name
)

-- query for VIEW 2:
-- result: prints name and id of company that inactive agent belongs to
SELECT V.name, V.company_id, C.name
FROM v_inactive_agents V, real_estate_firm R, company C
WHERE V.company_id = R.id AND R.id = C.id

-- try SQL UPDATE for VIEW 2:
-- reassign all inactive agents to "Worst Real Estate"
UPDATE v_inactive_agents V
SET company_id = 9

-- VIEW 1 and 2 are both conditionally updatable because the database can uniquely identify the cid row,
-- which have fields that are updatable (int). However, the text strings are not updatable/setable.
-- Conditions that must hold so that a view can be updated in SQL:
---- columns can only be from one underlying table,
---- columns cannot have been derived from aggregation, function, computation (etc),
---- no use of GROUP BY, HAVING, or DISTINCT in columns
---- view can’t use TOP with WITH CHECK OPTION
