-- Корректировка значения автоинкремента
\connect ApressFinancial

--alter table "CustomerDetails".customers
--alter column customerid
--drop identity;
--
--update "CustomerDetails".customers
--set customerid = 1;
--
---- Проверим данные
--select * from "CustomerDetails".customers
--order by customerid asc;


-- ======================================
-- включаем автоинкремент
--alter table "CustomerDetails".customers
--alter column customerid
--add generated always as identity;
--
---- Проверим данные
--select * from "CustomerDetails".customers
--order by customerid asc;

-- ======================================
-- Вставляем еще две строки
insert into "CustomerDetails".customers
(
     customertitleid
    ,customerlastname
    ,customerfirstname
    ,customerotherinitials
    ,addressid
    ,accountnumber
    ,accounttypeid
    ,clearebalance
    ,unclearebalance
)
values
(
     1
    ,'Brust'
    ,'Andrew'
    ,'J.'
    ,133
    ,18176111
    ,1
    ,200.00
    ,2.00
)

,(
     3
    ,'Lobel'
    ,'Leonard'
    ,null
    ,145
    ,53431993
    ,1
    ,437.97
    ,-10.56
);

-- Проверим добавленные данные
select * from "CustomerDetails".customers
order by customerid asc;

-- ======================================
-- Корректируем автоинкремент
--alter sequence "CustomerDetails".customers_customerid_seq restart with 2;
