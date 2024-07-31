-- 6. Задание 2. Функция, возвращающая табличное значение
-- ==============================================================
\connect ApressFinancial

create or replace function "TransactionDetails".fn_returntransactions(
    CustID bigint)
returns table (
     transactionid bigint
    ,customerid bigint
    ,transactiondescription varchar(30)
    ,dateentered timestamp(0)
    ,amount money
)
security invoker
as $$
select
     t.transactionid as transactionid
    ,t.customerid as customerid
    ,tt.transactiondescription as transactiondescription
    ,t.dateentered as dateentered
    ,t.amount as amount
from "TransactionDetails".transactions t
join "TransactionDetails".transactiontypes tt
    on tt.transactiontypesid = t.transactiontype
where t.customerid = CustID;
$$ language sql;
