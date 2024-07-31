-- 5-2 Задание 1.
-- Создание представления
-- v_currentshares
-- ===========================================================
\connect ApressFinancial


-- ================ Сгенерированный код ======================
--CREATE VIEW "ShareDetails".v_currentshares
-- AS
--select
--     sharedesc
--    ,sharetickerid
--    ,currentprice
--as "Last Price"
--from "ShareDetails".shares
--where currentprice > 0
--order by sharedesc;
--;
--
--ALTER TABLE "ShareDetails".v_currentshares
--    OWNER TO postgres;
-- ================ Сгенерированный код ======================

--select
--     sharedesc
--    ,sharetickerid
--    ,currentprice
--as "Last Price"
--from "ShareDetails".shares
--where currentprice > 0
--order by sharedesc;

-- ============================
-- Тестирование созданного view
select * from "ShareDetails".v_currentshares;

