DROP TABLE real_estate_firm;
DROP TABLE management_firm;
DROP TABLE company;
DROP TABLE manager;
DROP TABLE apt_building;
DROP TABLE apt_unit;
DROP TABLE house;
DROP TABLE listing;
DROP TABLE agent;
DROP TABLE customer;

CREATE TABLE company (
    id integer,
    name text,
    address text,
    PRIMARY KEY (id)
);

CREATE TABLE real_estate_firm (
        brokerage_number integer,
        PRIMARY KEY (id)
) INHERITS (company);

CREATE TABLE management_firm (
    PRIMARY KEY (id)
) INHERITS (company);

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
    PRIMARY KEY (address)
) INHERITS (listing);

CREATE TABLE house (
    stories integer,
    lot_size integer,
    PRIMARY KEY (address)
) INHERITS (listing);

CREATE TABLE customer (
    sin integer,
    name text,
    PRIMARY KEY (sin)
);

CREATE TABLE agent (
    name text,
    company_id integer,
    PRIMARY KEY (name),
    FOREIGN KEY (company_id) REFERENCES real_estate_firm(id)
);
