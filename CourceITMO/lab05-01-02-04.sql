-- Задание 2. Ограничение для столбцов
-- п.4
-- ===================================
-- Ошибка:
-- psql:lab05-01-02-04.sql:24: ERROR:  new row for relation "customersproducts" violates check constraint "ck_custprods_amtcheck"
-- DETAIL:  Failing row contains (1, 1, 1, -$100.00, 0, 2023-08-24 00:00:00, 2023-08-24 00:00:00, f).
-- INSERT 0 1
\connect ApressFinancial

insert into "CustomerDetails".customersproducts
(
     customerid
    ,financialproductid
    ,amounttocollect
    ,frequency
    ,lastcollected
    ,lastcollection
    ,renewable
)
values
(
     1
    ,1
    ,-100
    ,0
    ,'2023-08-24'
    ,'2023-08-24'
    ,false
);

insert into "CustomerDetails".customersproducts
(
     customerid
    ,financialproductid
    ,amounttocollect
    ,frequency
    ,lastcollected
    ,lastcollection
    ,renewable
)
values
(
     1
    ,1
    ,100
    ,0
    ,'2023-08-24'
    ,'2023-08-24'
    ,false
);
