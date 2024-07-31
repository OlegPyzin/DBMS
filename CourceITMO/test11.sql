-- агрегатные функции
\connect demo

-- ошибка это использование двойных ковычек в "Economy"
-- должны быть ''
--select
--    avg(amount) as Average,
--    sum(amount) as Summary
--from bookings.ticket_flights
--where fare_conditions = 'Economy';

select
    count(*)
from bookings.ticket_flights
where fare_conditions = 'Economy';
