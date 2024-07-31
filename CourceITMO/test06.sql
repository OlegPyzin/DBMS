-- получение списка значений
\connect demo

select flight_no,
       scheduled_departure,
       scheduled_arrival,
       departure_airport,
       arrival_airport
from bookings.flights
where departure_airport = 'DME'
and arrival_airport in ('LED','KZN')
and scheduled_departure between '2017-08-31' and '2017-09-01';