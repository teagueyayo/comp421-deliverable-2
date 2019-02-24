DROP TABLE buys;
DROP TABLE sells;
DROP TABLE partners;
DROP TABLE managed_by;
DROP TABLE manager;
DROP TABLE apt_unit;
DROP TABLE apt_building;
DROP TABLE house;
DROP TABLE listing;
DROP TABLE agent;
DROP TABLE customer;
DROP TABLE real_estate_firm;
DROP TABLE management_firm;
DROP TABLE company;

CREATE TABLE company (
    id integer,
    name text,
    address text,
    PRIMARY KEY (id)
);

CREATE TABLE real_estate_firm (
        brokerage_number integer,
        id integer,
        PRIMARY KEY(id)
);  -- fix inheritance

CREATE TABLE management_firm (
    id integer,
    PRIMARY KEY (id)
);  -- fix inheritance

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
    FOREIGN KEY (building) REFERENCES apt_building(address) -- handles "unit of"
);  -- fix inheritance

CREATE TABLE house (
    stories integer,
    lot_size integer
);  -- fix inheritance

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
        laddress text,
        FOREIGN KEY (aname) REFERENCES agent(name),
        FOREIGN KEY (csin) REFERENCES customer(sin),
        FOREIGN KEY (laddress) REFERENCES listing(address)
);

CREATE TABLE sells (
        price integer NOT NULL,
        aname text,
        csin integer NOT NULL,
        laddress text,
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
    baddress text,
    FOREIGN KEY (mfirm_id) REFERENCES management_firm(id),
    FOREIGN KEY (mname) REFERENCES manager(name),
    FOREIGN KEY (baddress) REFERENCES apt_building(address)
);
