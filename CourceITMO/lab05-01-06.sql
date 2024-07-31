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
