-- Добавление данных в ShareDetails.shares
\connect ApressFinancial

insert into "ShareDetails".shares
    (
    sharedesc,
    sharetickerid,
    currentprice
    )
values
    (
    'ACME''S HOMEBAKE COOKIES INC'
    ,'AHCI'
    ,2.34125
    );
