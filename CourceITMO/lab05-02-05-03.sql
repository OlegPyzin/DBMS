-- 5-2 Задание 5. Создание материализованного представления
-- п.3 Обновление данных в таблице для тестирования представления
-- ==============================================================
\connect ApressFinancial

-- таблица перед изменением
--select * from "CustomerDetails".customers;
--
--update "CustomerDetails".customers
--set customerlastname = 'Brusten'
--where customerlastname = 'Brust';

-- таблица после изменения
select * from "CustomerDetails".customers;

-- смотрим что материализованное представление не изменилось
select * from "CustomerDetails".v_custfinproducts;

-- обновляем материализованное представление
refresh materialized view "CustomerDetails".v_custfinproducts;

select * from "CustomerDetails".v_custfinproducts;