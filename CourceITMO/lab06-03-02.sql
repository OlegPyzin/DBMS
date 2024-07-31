-- 6. Задание 3. Создание хранимой процедуры
--    проверка работы хранимой процедуры
-- ==============================================================
\connect ApressFinancial

-- Посмотрим что в таблице "CustomerDetails".customers
select * from "CustomerDetails".customers;

-- Первый вариант вызова хранимой процедуры
-- Внесем данный с помощью хранимой процедуры
-- call "CustomerDetails".spu_inscustomer('Henry', 'Williams', 1, NULL, 431, '22067531', 1);

-- Посмотрим что в таблице "CustomerDetails".customers
-- select * from "CustomerDetails".customers;

-- Второй вариант вызова хранимой процедуры
call "CustomerDetails".spu_inscustomer(
    CustTitle := 1
    ,FirstName := 'Julie'
    ,CustInitials := 'A'
    ,LastName := 'Dewson'
    ,AddressId := 643
    ,AccountNumber := 'SS865'
    ,AccountTypeId := 7
);

-- Посмотрим что в таблице "CustomerDetails".customers
select * from "CustomerDetails".customers;
