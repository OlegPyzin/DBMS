-- использование выражений
\connect demo

--select
--    scheduled_departure,
--    'из ' || departure_airport::varchar || ' в '
--            || arrival_airport::varchar as Destionation,
--    status
--from bookings.flights
--order by scheduled_departure;

-- здесь была пропущена ";"
select
    book_ref,
--    passenger_name,
--    position(' ' in passenger_name)
    substring(passenger_name from 1 for position(' ' in passenger_name)) as Name,
    substring(passenger_name from position(' ' in passenger_name)) as Surname
from bookings.tickets;
