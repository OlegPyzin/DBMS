-- create table transactiontypes
\connect ApressFinancial

create table "TransactionDetails".transactiontypes (
    transactiontypesid integer generated always as identity not null,
    transactiondescription varchar(30) not null,
    credittype boolean not null
);
