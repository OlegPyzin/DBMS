-- устранение дублирования строк
\connect demo

select distinct
       departure_airport,
       arrival_airport
from bookings.flights
order by 1,2;
