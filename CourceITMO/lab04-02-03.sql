-- Задание 3 удаление индекса
-- после проверки что индекс удален
-- восстановить его из предыдущего задания
-- ======================
\connect ApressFinancial

-- drop index "TransactionDetails".ix_transactiontypes;
--
-- восстановление индекса
--create unique index if not exists ix_transactiontypes
--    on "TransactionDetails".transactiontypes
--    using btree
--    (transactiontypesid asc);

 alter table if exists "TransactionDetails".transactiontypes
    cluster on ix_transactiontypes;


