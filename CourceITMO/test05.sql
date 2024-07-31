--- Таблица bookings.flights
--- Столбцы:
--- flight_id
--- flight_no
--- scheduled_departure
--- scheduled_arrival
--- departure_airport
--- arrival_airport
--- status
--- aircraft_code
--- actual_departure
--- actual_arrival

--- получение диапазона значение
\connect demo

select flight_no, scheduled_departure, scheduled_arrival,
       departure_airport, arrival_airport
from bookings.flights
where departure_airport = 'DME'
and scheduled_departure between '2017-08-31' and '2017-09-01';