-- 6. Задание 4. Создание триггера
--          п.6  моделируем ненадежную транзакцию
--               после изменения функции триггера
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

select  clearebalance from "CustomerDetails".customers
where customerid = 1;
