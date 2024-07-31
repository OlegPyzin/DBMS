-- 6. Задание 2. Функция, возвращающая табличное значение
--    внесения данных для проверки работы функции
--- ==============================================================
\connect ApressFinancial

insert into "TransactionDetails".transactions (
    customerid
    ,transactiontype
    ,dateentered
    ,amount
    ,relatedproductid
)

values
     (1, 1, '2023-08-01', 100.00, 1)
    ,(1, 1, '2023-08-03',  75.67, 1)
    ,(1, 2, '2023-08-05',  35.20, 1)
    ,(1, 2, '2023-08-06',  20.00, 1);

insert into "TransactionDetails".transactiontypes (
     transactiondescription
    ,credittype
    ,affectcashbalance
)
values
     ('proc+', true, true)
    ,('proc-', false, true);

