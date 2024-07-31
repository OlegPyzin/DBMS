-- изменение таблицы transactiontypes
-- ==================================
-- добавление столбца
-- если таблица не пуста то сначала следует допустить
-- не вводить значение в создаваемый столбец т.е. NULL
-- после заполнения добавленного столбца можно перевести
-- данный столбец в NOT NULL

\connect ApressFinancial

alter table "TransactionDetails".transactiontypes
add affectcashbalance boolean null;
