-- 6. Задание 1. Создание скалярной пользовательской функции
-- ==============================================================
\connect ApressFinancial

create or replace function "TransactionDetails".fn_intcalc(
     Amount decimal(18,5)
    ,FromDate date
    ,ToDate date
    ,InterestRate decimal(6,3)=10
)
returns decimal(18,5)
security invoker
as $$
    declare
        IntCalculated decimal(18,5);
    begin
        IntCalculated := Amount * (InterestRate/100.00) *
              (extract(day from ToDate::timestamp - FromDate::timestamp)/365.00 );
        return coalesce(IntCalculated,0);
    end;
$$ language plpgsql;
