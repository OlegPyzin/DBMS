-- 5-2 Задание 4. Изменение базовых таблиц представлений
-- п.1 Ввод данных для тестировния
-- ===========================================================
\connect ApressFinancial

insert into "CustomerDetails".financialproducts
(
     productid
    ,productname
)
values
     (1, 'Regular Savings')
    ,(2, 'Bonds Account')
    ,(3, 'Share Account')
    ,(4, 'Life Insurance');


-- При внесении возникла ошибка
-- psql:lab05-02-04-01.sql:31: ERROR:  date/time field value out of range: "31.08.2021"
-- LINE 12:      (1, 1, 200, 1, '31.08.2021', '31.08.2035',    false)
--                              ^
-- HINT:  Perhaps you need a different "datestyle" setting.

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
--     (1, 1, 200, 1, '31/08/2021', '31/08/2035',    false)
--    ,(1, 2, 50,  1, '24/08/2023', '24 March 2025', false)
--    ,(2, 4, 150, 3, '20/08/2023', '20/08/2025',    true)
--    ,(3, 3, 500, 0, '24/08/2023', '24/08/2025',    true);
     (1, 1, 200, 1, '31 August 2021', '31 August 2035', false)
    ,(1, 2, 50,  1, '24 August 2023', '24 March 2025',  false)
    ,(2, 4, 150, 3, '20 August 2023', '20 August 2025', true)
    ,(3, 3, 500, 0, '24 August 2023', '24 August 2025', true);
