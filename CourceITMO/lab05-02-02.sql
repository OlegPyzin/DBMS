-- 5-2 Задание 2.
-- п.1 Изменение представления
-- v_currentshares
-- ===========================================================
\connect ApressFinancial

--select
--     shares.shareid
--    ,shares.sharedesc
--    ,shares.sharetickerid
--    ,shares.currentprice
--as "Last Price"
--from "ShareDetails".shares
--where shares.currentprice > 0::numeric
--order by shares.sharedesc;

-- ============================
-- Тестирование измененного view
select * from "ShareDetails".v_currentshares;

-- п.2 Создание представления
-- v_shareprices
-- ================ Сгенерированный код ======================
--CREATE VIEW "ShareDetails".v_shareprices
-- AS
--select
--     sp.shareid
--    ,sp.price
--    ,sp.pricedate
--    ,vcs.sharedesc
--from "ShareDetails".shareprices sp
--inner join "ShareDetails".v_currentshares vcs
--    on sp.shareid = vcs.shareid
--order by vcs.sharedesc, sp.pricedate desc;
--;
--
--ALTER TABLE "ShareDetails".v_shareprices
--    OWNER TO postgres;
-- ================ Сгенерированный код ======================

--select
--     sp.shareid
--    ,sp.price
--    ,sp.pricedate
--    ,vcs.sharedesc
--from "ShareDetails".shareprices sp
--inner join "ShareDetails".v_currentshares vcs
--    on sp.shareid = vcs.shareid
--order by vcs.sharedesc, sp.pricedate desc;
