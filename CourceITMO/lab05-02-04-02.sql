-- 5-2 Задание 4. Изменение базовых таблиц представлений
-- п.2 Создание представления
-- ===========================================================
\connect ApressFinancial

-- Проверим что внесено в таблицы

-- select * from "CustomerDetails".financialproducts;

-- select * from "CustomerDetails".customersproducts;

drop view if exists "CustomerDetails".v_custfinproducts;

create view "CustomerDetails".v_custfinproducts
as select
    c.customerfirstname || ' ' || c.customerlastname as customername
    ,c.accountnumber
    ,fp.productname
    ,cp.amounttocollect
    ,cp.frequency
    ,cp.lastcollected
from "CustomerDetails".customers as c
join "CustomerDetails".customersproducts as cp
    on cp.customerid = c.customerid
join "CustomerDetails".financialproducts as fp
    on fp.productid = cp.financialproductid;

-- =================================================================
-- п.3 проверка представления
select * from "CustomerDetails".v_custfinproducts;

-- Вывод отличался от того, что в задании
-- psql:lab05-02-04-02.sql:12: NOTICE:  view "v_custfinproducts" does not exist, skipping
-- DROP VIEW
-- CREATE VIEW
--  customername  | accountnumber |   productname   | amounttocollect | frequency |    lastcollected
-- ---------------+---------------+-----------------+-----------------+-----------+---------------------
--  Leonard Lobel | 53431993      | Regular Savings |         $100.00 |         0 | 2023-08-24 00:00:00
--  Leonard Lobel | 53431993      | Regular Savings |         $200.00 |         1 | 2021-08-31 00:00:00
--  Leonard Lobel | 53431993      | Bonds Account   |          $50.00 |         1 | 2023-08-24 00:00:00
--  Andrew Brust  | 18176111      | Life Insurance  |         $150.00 |         3 | 2023-08-20 00:00:00
--  Leonard Lobel | 53431993      | Share Account   |         $500.00 |         0 | 2023-08-24 00:00:00
-- (5 rows)
