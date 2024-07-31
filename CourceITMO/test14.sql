-- подведение итогов
-- использование предложения GROUP BY
\connect demo

-- 13. подведение итогов
-- без group by departure_airport работать не будет
--select
--    departure_airport,
--    count(actual_arrival)
--from bookings.flights;

select
    departure_airport,
    count(actual_arrival)
from bookings.flights
group by departure_airport
order by count desc;
