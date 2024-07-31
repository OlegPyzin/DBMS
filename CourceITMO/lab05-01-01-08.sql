-- Вставка данных
\connect ApressFinancial

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
     3
    ,'Lobel'
    ,'Leonard'
    ,NULL
    ,145
    ,53431993
    ,1
    ,437.97
    ,-10.56
);

-- Проверим внесенные данные
select * from "CustomerDetails".customers
order by customerid asc;


-- Удаление введенной через pgAdmin записи
--delete from "CustomerDetails".customers
--where customerid = 3;
--
--select * from "CustomerDetails".customers
--order by customerid asc;

-- Изменение типов данных столбцов таблицы
--alter table "CustomerDetails".customers
--alter column customerfirstname type character varying(50);
--
--alter table "CustomerDetails".customers
--alter column customerotherinitials type character varying(10);
--
--alter table "CustomerDetails".customers
--alter column customerlastname type character varying(50);
--
--alter table "CustomerDetails".customers
--alter column accountnumber type character varying(15);

-- =======================================
-- Сгенерированный скрипт создания таблицы
-- Table: CustomerDetails.customers

-- DROP TABLE IF EXISTS "CustomerDetails".customers;

--CREATE TABLE IF NOT EXISTS "CustomerDetails".customers
--(
--    customerid bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
--    customertitleid integer NOT NULL,
--    customerfirstname character varying(50) COLLATE pg_catalog."default" NOT NULL,
--    customerotherinitials character varying(10) COLLATE pg_catalog."default",
--    customerlastname character varying(50) COLLATE pg_catalog."default" NOT NULL,
--    addressid bigint NOT NULL,
--    accountnumber character varying(15) COLLATE pg_catalog."default" NOT NULL,
--    accounttypeid integer NOT NULL,
--    clearebalance money NOT NULL,
--    unclearebalance money NOT NULL,
--    dateadded date NOT NULL DEFAULT CURRENT_DATE,
--    CONSTRAINT customers_pkey PRIMARY KEY (customerid)
--)
--
--TABLESPACE pg_default;
--
--ALTER TABLE IF EXISTS "CustomerDetails".customers
--    OWNER to postgres;
--
--COMMENT ON TABLE "CustomerDetails".customers
--    IS 'Учебная БД таблица customers.';
---- Index: ix_customers_customerid
--
---- DROP INDEX IF EXISTS "CustomerDetails".ix_customers_customerid;
--
--CREATE UNIQUE INDEX IF NOT EXISTS ix_customers_customerid
--    ON "CustomerDetails".customers USING btree
--    (customerid ASC NULLS LAST)
--    WITH (deduplicate_items=True)
--    TABLESPACE pg_default;
