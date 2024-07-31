-- Задание 2. Ограничение для столбцов
-- п.1
\connect ApressFinancial

alter table "CustomerDetails".customersproducts
add constraint pk_customersproducts
primary key (customerfinancialproductid);

alter table "CustomerDetails".customersproducts
add constraint ck_custprods_amtcheck
check (amounttocollect > 0::money);

alter table "CustomerDetails".customersproducts
alter column renewable
set default false;
