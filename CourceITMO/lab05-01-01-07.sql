-- Проверка вставленных данных
\connect ApressFinancial

select * from "CustomerDetails".customers
order by customerid asc;
