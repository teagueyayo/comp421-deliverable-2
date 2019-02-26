DROP TABLE IF EXISTS buys;
DROP TABLE IF EXISTS sells;
DROP TABLE IF EXISTS partners;
DROP TABLE IF EXISTS managed_by;
DROP TABLE IF EXISTS manager;
DROP TABLE IF EXISTS apt_unit;
DROP TABLE IF EXISTS apt_building;
DROP TABLE IF EXISTS house;
DROP TABLE IF EXISTS listing;
DROP TABLE IF EXISTS agent;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS real_estate_firm;
DROP TABLE IF EXISTS management_firm;
DROP TABLE IF EXISTS company;

CREATE TABLE company (
    id integer,
    name text,
    address text,
    PRIMARY KEY (id)
);

CREATE TABLE real_estate_firm (
    brokerage_number integer,
    id integer UNIQUE NOT NULL,
    FOREIGN KEY (id) REFERENCES company(id)
);

CREATE TABLE management_firm (
    id integer UNIQUE NOT NULL,
    FOREIGN KEY (id) REFERENCES company(id)
);

CREATE TABLE manager (
    name text,
    PRIMARY KEY (name)
);

CREATE TABLE apt_building (
    address text,
    PRIMARY KEY (address)
);

CREATE TABLE listing (
    address text,
    build_date date,
    size integer,
    list_price integer,
    PRIMARY KEY (address)
);

CREATE TABLE apt_unit (
    unit_number integer,
    building text NOT NULL,
    address text UNIQUE NOT NULL,
    FOREIGN KEY (building) REFERENCES apt_building(address), -- handles "unit of"
    FOREIGN KEY (address) REFERENCES listing(address)
);

CREATE TABLE house (
    stories integer,
    lot_size integer,
    address text UNIQUE NOT NULL,
    FOREIGN KEY (address) REFERENCES listing(address)
);

CREATE TABLE customer (
    sin integer,
    name text,
    PRIMARY KEY (sin)
);

CREATE TABLE agent (
    name text,
    company_id integer NOT NULL,
    PRIMARY KEY (name),
    FOREIGN KEY (company_id) REFERENCES real_estate_firm(id) -- handles "works for"
);

CREATE TABLE buys (
    price integer NOT NULL,
    aname text,
    csin integer NOT NULL,
    laddress text NOT NULL,
    FOREIGN KEY (aname) REFERENCES agent(name),
    FOREIGN KEY (csin) REFERENCES customer(sin),
    FOREIGN KEY (laddress) REFERENCES listing(address)
);

CREATE TABLE sells (
    price integer NOT NULL,
    aname text,
    csin integer NOT NULL,
    laddress text NOT NULL,
    FOREIGN KEY (aname) REFERENCES agent(name),
    FOREIGN KEY (csin) REFERENCES customer(sin),
    FOREIGN KEY (laddress) REFERENCES listing(address)
);

CREATE TABLE partners (
    aname1 text NOT NULL,
    aname2 text NOT NULL,
    FOREIGN KEY (aname1) REFERENCES agent(name),
    FOREIGN KEY (aname2) REFERENCES agent(name)
);

CREATE TABLE managed_by (
    mfirm_id int,
    mname text,
    baddress text UNIQUE,
    FOREIGN KEY (mfirm_id) REFERENCES management_firm(id),
    FOREIGN KEY (mname) REFERENCES manager(name),
    FOREIGN KEY (baddress) REFERENCES apt_building(address)
);
