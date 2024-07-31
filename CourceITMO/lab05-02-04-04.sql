-- 5-2 Задание 4. Изменение базовых таблиц представлений
-- п.4 Попытка внести изменение в таблицу где есть view
-- ===========================================================
\connect ApressFinancial

alter table "CustomerDetails".customers
alter column customerfirstname type varchar(100);

-- ОШИБКА
-- psql:lab05-02-04-04.sql:7: ERROR:  cannot alter type of a column used by a view or rule
-- DETAIL:  rule _RETURN on view "CustomerDetails".v_custtrans depends on column "customerfirstname"
