-- create table customers
-- =======================
-- Сгенерированный в pgadmin
--
--CREATE TABLE "CustomerDetails".customers
--(
--    customerid bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 ),
--    customertitleid integer NOT NULL,
--    customerfirstname character varying(50)[] NOT NULL,
--    customerotherinitials character varying(10)[],
--    customerlastname character varying(50)[] NOT NULL,
--    addressid bigint NOT NULL,
--    accountnumber character(15)[] NOT NULL,
--    accounttypeid integer NOT NULL,
--    clearebalance money NOT NULL,
--    unclearebalance money NOT NULL,
--    dateadded date NOT NULL DEFAULT current_date,
--    PRIMARY KEY (customerid)
--);
--
--ALTER TABLE IF EXISTS "CustomerDetails".customers
--    OWNER to postgres;
--
--COMMENT ON TABLE "CustomerDetails".customers
--    IS 'Учебная БД таблица customers.';

\connect ApressFinancial

create table "CustomerDetails".customers (
    customerid bigint generated always as identity (increment 1 start 1)
                         primary key not null,
    customertitleid integer not null,
    customerfirstname varchar(50) not null,
    customerotherinitials varchar(10) null,
    customerlastname varchar(50) not null,
    addressid bigint not null,
    accountnumber character(15) not null,
    accounttypeid integer not null,
    clearebalance money not null,
    unclearebalance money not null,
    dateadded date not null default current_date
);
