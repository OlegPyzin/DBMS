-- Задание 4. Извлечение данных: отображение результатов
-- =====================================================
-- и проверим что ввелось

\connect ApressFinancial

select * from "CustomerDetails".customers;

select
     customerfirstname
    ,customerlastname
    ,clearebalance
from "CustomerDetails".customers;

select
     customerfirstname as "First Name"
    ,customerlastname as "Last Name"
    ,clearebalance Balance
from "CustomerDetails".customers;

-- Экспорт в CSV файл из таблицы "CustomerDetails".customers
-- через pgAdmin