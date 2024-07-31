-- Задание 5. Обновление данных
-- п.1
-- ============================
-- и проверим как обновилось

\connect ApressFinancial

-- Посмотрим таблицу до обновления
select
     customerfirstname as "First Name"
    ,customerlastname as "Last Name"
    ,clearebalance Balance
from "CustomerDetails".customers;

update "CustomerDetails".customers
set customerlastname = 'Brodie'
where customerid = 4;

-- Посмотрим таблицу после обновления
select
     customerfirstname as "First Name"
    ,customerlastname as "Last Name"
    ,clearebalance Balance
from "CustomerDetails".customers;
