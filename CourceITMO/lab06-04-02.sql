-- 6. Задание 4. Создание триггера
--          п.2  Сам триггер
-- ==============================================================
\connect ApressFinancial

create or replace trigger tg_instransactions
    after insert on "TransactionDetails".transactions
    referencing new table as new
    for each row execute function "CustomerDetails".fn_instransactions();
