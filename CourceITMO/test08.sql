-- Сортировка данных
\connect demo

--select
--       scheduled_departure,
--       flight_no,
--       departure_airport,
--       arrival_airport
--from bookings.flights
--where departure_airport = 'DME'
--order by arrival_airport;

select
       scheduled_departure,
       flight_no,
       departure_airport,
       arrival_airport
from bookings.flights
where departure_airport = 'DME'
order by arrival_airport, scheduled_departure desc;
