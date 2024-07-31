-- использование предложения HAVING
\connect demo

select
    departure_airport,
    count(actual_arrival)
from bookings.flights
group by departure_airport
having count(actual_arrival) > 500
order by count desc;
