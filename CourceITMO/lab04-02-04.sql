-- Задание 4 Создание и изменение индекса
-- ======================
\connect ApressFinancial

drop index if exists "ShareDetails".ix_shareprices;

create unique index ix_shareprices
on "ShareDetails".shareprices (shareid asc, pricedate desc, price);