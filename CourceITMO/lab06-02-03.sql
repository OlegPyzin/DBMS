-- 6. Задание 2. Функция, возвращающая табличное значение
--    тестирование функции на двух наборах значений
--- ==============================================================
\connect ApressFinancial

select * from "TransactionDetails".fn_returntransactions(1);

-- второй вариант тестирования
select
    c.customerfirstname
    ,c.customerlastname
    ,trans.transactionid
    ,trans.transactiondescription
    ,trans.dateentered
    ,trans.amount
from "CustomerDetails".customers as c
join "TransactionDetails".fn_returntransactions(c.customerid) as trans
    on c.customerid = trans.customerid;
