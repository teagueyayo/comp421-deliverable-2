DROP TABLE manager;
DROP TABLE apt_building;
DROP TABLE apt_unit;
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
    unit_number integer
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
    company_id integer,
    PRIMARY KEY (name),
    FOREIGN KEY (company_id) REFERENCES real_estate_firm(id)
);
