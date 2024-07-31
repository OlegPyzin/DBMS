-- Вопросы
-- Ошибка:
-- psql:lab04-01-06.sql:26: ERROR:  there is no unique constraint matching given keys for referenced table "shares"
--
-- 1. В таблице "ShareDetails".shares не был определен первичный ключ
--    действие: объявил первичный ключ

-- создание отношения с помощью кода
-- =================================
--ALTER TABLE IF EXISTS "TransactionDetails".transactions
--    ADD CONSTRAINT fk_transactions_shared FOREIGN KEY (relatedshared)
--    REFERENCES "ShareDetails".shares (shareid) MATCH SIMPLE
--    ON UPDATE NO ACTION
--    ON DELETE NO ACTION
--    NOT VALID;
--CREATE INDEX IF NOT EXISTS fki_fk_transactions_shared
--    ON "TransactionDetails".transactions(relatedshared);

\connect ApressFinancial

alter table if exists "ShareDetails".shares
add constraint pk_transactions_shared primary key(shareid);

alter table if exists "TransactionDetails".transactions
add constraint fk_transactions_shared foreign key (relatedshareid)
references "ShareDetails".shares(shareid);
