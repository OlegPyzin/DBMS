-- создание остальных таблиц
-- =========================
\connect ApressFinancial

create table if not exists "CustomerDetails".customersproducts
(
    customerfinancialproductid bigint generated always as identity not null,
    customerid bigint not null,
    financialproductid bigint not null,
    amounttocollect money not null,
    frequency integer not null,
    lastcollected timestamp(0) not null,
    lastcollection timestamp(0) not null,
    renewable boolean not null
);

create table if not exists "CustomerDetails".financialproducts
(
    productid bigint not null,
    productname varchar(50) not null
);

-- before continue to create tables needed to create schema where tables will placed

create schema if not exists "ShareDetails" authorization postgres;

create table if not exists "ShareDetails".shareprices
(
    sharepriceid bigint generated always as identity not null,
    shareid bigint not null,
    price numeric(18,5) not null,
    pricedate timestamp(0) not null
);

create table if not exists "ShareDetails".shares
(
    shareid bigint generated always as identity not null,
    sharedesc varchar(50) not null,
    sharetickerid varchar(50) not null,
    currentprice numeric(18,5) not null
);
