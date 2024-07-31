-- Для выполения пункта 7 нужно полностью
-- скопировать содержимое из 6 пункта
-- поскольку при завершении сессии с psql
-- временная таблица удаляется :)
-- ======================= пункт 6 ==============================
-- Задание 6. Удаление данных
-- п.1
-- ============================
-- Проверим сохранится ли временная таблица после
-- завершения сеанса psql

\connect ApressFinancial

create temporary table tmp_customers
as select
     customerid
    ,customerfirstname
    ,customerotherinitials
    ,customerlastname
from "CustomerDetails".customers;

-- посмотрим что в таблице
select * from tmp_customers
order by customerid;

delete from tmp_customers
where customerid =4;

-- посмотрим что в таблице
select * from tmp_customers;

-- Добавим запись
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;

-- Удаление строки с NULL customerid
delete from tmp_customers
where customerid is null;

-- посмотрим что в таблице
select * from tmp_customers;

-- поработаем со столбцом customerid
alter table tmp_customers
alter column customerid
set not null;

-- делаем автоинкремент
alter table tmp_customers
alter column customerid
add generated always as identity (increment 1 start 7);

-- вставляем строку
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;

-- ======================= пункт 6 ==============================
--
-- Здесь продолжим пункт 7

delete from tmp_customers;

-- вставляем строку
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;

-- =====================================================
-- Здесь продолжим пункт 8

truncate table tmp_customers;

-- вставляем строку
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;

-- =====================================================
-- Здесь продолжим пункт 9

truncate table tmp_customers restart identity;

-- вставляем строку
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;

-- =====================================================
-- Здесь продолжим пункт 10

alter table tmp_customers
alter column customerid
drop identity;

alter table tmp_customers
alter column customerid
add generated always as identity (increment 1 start 1);

truncate table tmp_customers restart identity;

-- вставляем строку
insert into tmp_customers
(
     customerfirstname
    ,customerotherinitials
    ,customerlastname
)
values
(
     'Dmitrij'
    ,'J'
    ,'Vetrov'
);

-- посмотрим что в таблице
select * from tmp_customers;
