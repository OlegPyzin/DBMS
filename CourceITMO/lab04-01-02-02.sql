-- create table transactions
\connect ApressFinancial

create table "TransactionDetails".transactions (
    transactionid bigint generated always as identity (increment 1 start 1)
                         primary key not null,
    customerid bigint not null,
    transactiontype int not null,
    dateentered timestamp(0) not null,
    amount numeric(18,5) not null,
    referencedetails varchar(50) null,
    notes varchar null,
    relatedshareid bigint null,
    relatedproductid bigint not null
);
