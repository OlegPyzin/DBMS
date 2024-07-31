-- 5-2 Задание 5. Создание материализованного представления
-- п.1 Пересоздание представления
-- ===========================================================
\connect ApressFinancial

-- Проверим что внесено в таблицы

-- select * from "CustomerDetails".financialproducts;

-- select * from "CustomerDetails".customersproducts;

drop view if exists "CustomerDetails".v_custfinproducts;

create materialized view "CustomerDetails".v_custfinproducts
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
