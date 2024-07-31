-- создание индекса в cli
-- ======================
\connect ApressFinancial

create index if not exists ix_customersproducts
on "CustomerDetails".customersproducts (customerid);
