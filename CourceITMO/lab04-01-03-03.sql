-- изменение таблицы transactiontypes
-- ==================================

\connect ApressFinancial

alter table "TransactionDetails".transactiontypes
add constraint PK_TransactionTypes primary key(transactiontypesid);
