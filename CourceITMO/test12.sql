-- агрегатные функции с NULL
\connect demo

--select
--    count(*)
--from bookings.flights
--where coalesce(actual_arrival::date, '2017-06-12') = '2017-06-12';

--select
--    count(actual_arrival)
--from bookings.flights
--where coalesce(actual_arrival::date, '2017-06-12') = '2017-06-12';

select
    count(distinct departure_airport)
from bookings.flights;

