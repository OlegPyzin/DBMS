-- как работают операторы ROLLUP и CUBE
\connect demo

--select
--    departure_airport,
--    arrival_airport,
--    count(actual_arrival)
--from bookings.flights
--group by rollup (departure_airport, arrival_airport)
--having count(actual_arrival) > 300
--order by count desc;

select
    departure_airport,
    arrival_airport,
    count(actual_arrival)
from bookings.flights
group by cube (departure_airport, arrival_airport)
having count(actual_arrival) > 300
order by count desc;

