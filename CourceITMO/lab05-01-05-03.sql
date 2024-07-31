-- Задание 5. Обновление данных
-- п.3
-- ============================
-- несовпадение типов данных
-- do ... end не работает с SQL запросами

\connect ApressFinancial

-- Ошибка:
-- ==============================
-- psql:lab05-01-05-03.sql:42: ERROR:  column "clearebalance" is of type money but expression is of type character varying
-- LINE 2:     set clearebalance  = WrongDataType
--                                  ^
-- HINT:  You will need to rewrite or cast the expression.
-- QUERY:  update "CustomerDetails".customers
--     set clearebalance  = WrongDataType
--     where  customerid = 4
-- CONTEXT:  PL/pgSQL function inline_code_block line 5 at SQL statement
--do
--$$
--declare
--    WrongDataType varchar(20) := '4311.22';
--begin
--    update "CustomerDetails".customers
--    set clearebalance  = WrongDataType
--    where  customerid = 4;
--end
--$$
--

-- ======================================================================
-- Если использовать "," в разделителе дробной части результат удивил:
-- You are now connected to database "ApressFinancial" as user "postgres".
--  customerid | First Name | Last Name |   balance   | Un clear Balance
-- ------------+------------+-----------+-------------+------------------
--           1 | Leonard    | Lobel     |     $437.97 |          -$10.56
--           2 | Andrew     | Brust     |     $200.00 |            $2.00
--           3 | Leonard    | Lobel     |     $437.97 |          -$10.56
--           5 | Julie      | Dewson    |      $53.32 |          -$12.21
--           6 | Kirsty     | Hull      |   $1,266.00 |           $10.32
--           4 | Bernie     | McGlynn   | $431,122.00 |            $0.00
-- (6 rows)
-- ======================================================================
do
$$
declare
    WrongDataType varchar(20) := '4311.22';
begin
    update "CustomerDetails".customers
    set  clearebalance = WrongDataType::money
    where  customerid = 4;
end
$$

-- Посмотрим таблицу после обновления
--select
--     customerid
--    ,customerfirstname as "First Name"
--    ,customerlastname as "Last Name"
--    ,clearebalance Balance
--    ,unclearebalance "Un clear Balance"
--from "CustomerDetails".customers;
