-- Задание 5. Обновление данных
-- п.2
-- ============================
-- и проверим как обновилось
-- do ... end не работает с SQL запросами

\connect ApressFinancial

do
$$
declare
    ValueToUpdate varchar(30);
begin
    ValueToUpdate := 'McGlynn';

    update "CustomerDetails".customers
    set  customerlastname = ValueToUpdate,
         clearebalance = clearebalance + unclearebalance,
         unclearebalance = 0
    where  customerlastnaem = 'Brodie';
end
$$
--
-- Посмотрим таблицу после обновления
--select
--     customerid
--    ,customerfirstname as "First Name"
--    ,customerlastname as "Last Name"
--    ,clearebalance Balance
--    ,unclearebalance "Un clear Balance"
--from "CustomerDetails".customers;
