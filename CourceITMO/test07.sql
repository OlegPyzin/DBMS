-- работа со значениями NULL
\connect demo

--select flight_no,
--       scheduled_departure,
--       scheduled_arrival,
--       actual_departure,
--       actual_arrival
--from bookings.flights
--where departure_airport = 'DME'
--and actual_departure = NULL;
--
--select flight_no,
--       scheduled_departure,
--       scheduled_arrival,
--       actual_departure,
--       actual_arrival
--from bookings.flights
--where departure_airport = 'DME'
--and actual_departure is NULL;

--select flight_no,
--       scheduled_departure,
--       scheduled_arrival,
--       coalesce(actual_departure, '9999-12-31'),
--       coalesce(actual_arrival, '9999-12-31')
--from bookings.flights
--where departure_airport = 'DME'
--and arrival_airport = 'KZN';

--select flight_no as "Flight number",
--       scheduled_departure,
--       scheduled_arrival,
--       coalesce(actual_departure, '9999-12-31') as "Actual Departure",
--       coalesce(actual_arrival, '9999-12-31') "Actual Arrival"
--from bookings.flights
--where departure_airport = 'DME'
--and arrival_airport = 'KZN';

select  scheduled_departure,
        flight_no,
        coalesce(actual_departure::varchar, 'CANCELED') as "Actual Departure"
from bookings.flights
where departure_airport = 'DME'
and arrival_airport = 'KZN';
