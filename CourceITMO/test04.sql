--- фильтрация данных с помощью сравнения строк
\connect demo

--- была ошибка в имени столбца pasenger_name пропущена вторая "s"
select book_ref, passenger_id, passenger_name
from tickets
where passenger_name like 'V%'
   or passenger_name like 'E%';