-- 5-2 Задание 3. Создание представления
-- п.1 query editor
-- ===========================================================
\connect ApressFinancial

--create view "CustomerDetails".v_custtrans
--as
--select
--     c.accountnumber
--    ,c.customerfirstname
--    ,c.customerotherinitials
--from "CustomerDetails".customers as c
--join "TransactionDetails".transactions as t
--    on t.customerid = c.customerid
--join "TransactionDetails".transactiontypes as tt
--    on tt.transactiontypesid = t.transactiontype
--order by c.accountnumber asc, t.dateentered;

-- посмотрим что выводит созданный view
select * from "CustomerDetails".v_custtrans;
