-- 6. Задание 4. Создание триггера
--          п.4  моделируем ненадежную транзакцию
-- ==============================================================
\connect ApressFinancial

select  clearebalance from "CustomerDetails".customers
where customerid = 1;

insert into "TransactionDetails".transactions
(
    customerid
    ,transactiontype
    ,amount
    ,relatedproductid
    ,dateentered
)
values (1, 3, 200, 1, current_date);

-- Возврат ошибки
-- psql:lab06-04-04.sql:17: ERROR: null value in column "clearebalance" of relation "customers" violates not-null constraint
-- DETAIL:  Failing row contains (1, 3, Leonard, null, Lobel, 145, 53431993, 1, null, -$10.56, 2024-07-11).
