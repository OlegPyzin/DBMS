-- 3. создание еще 2-х индексов в cli
--    в том числе пример создания кластерного индекса
-- ======================
\connect ApressFinancial

create unique index if not exists ix_transactiontypes
    on "TransactionDetails".transactiontypes
    using btree
    (transactiontypesid asc);

alter table if exists "TransactionDetails".transactiontypes
    cluster on ix_transactiontypes;

create index ix_transactions_ttypes
    on "TransactionDetails".transactions
    using btree
    (transactiontype asc);

