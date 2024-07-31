-- 6. Задание 4. Создание триггера
--          п.5  Доработка триггерной функции
--               добавляем coalesce()
-- ==============================================================
\connect ApressFinancial

create or replace function "CustomerDetails".fn_instransactions()
returns trigger
as $$
begin
    update "CustomerDetails".customers
    set clearebalance = c.clearebalance + coalesce ((
        select
            case
                when tt.credittype = false then (i.amount * -1)::money
                else (i.amount)::money
            end
        from new as i
        join "TransactionDetails".transactiontypes as tt
            on tt.transactiontypesid = i.transactiontype
        where tt.affectcashbalance = true ), 0::money
    )
    from "CustomerDetails".customers as c
    join new as i
        on i.customerid = c.customerid;
    return null; -- возвращаемое значение для триггера AFTER игнорируется
end;
$$
language plpgsql;
