-- Задание 3. Одновременная вставка нескольких записей
-- ===================================================
-- и проверим что ввелось

\connect ApressFinancial

insert into "CustomerDetails".customers
(
     customertitleid
    ,customerfirstname
    ,customerotherinitials
    ,customerlastname
    ,addressid
    ,accountnumber
    ,accounttypeid
    ,clearebalance
    ,unclearebalance
)
values
(
     3
    ,'Bernie'
    ,'I'
    ,'McGee'
    ,314
    ,65368765
    ,1
    ,6653.11
    ,0.00
)

,(
     2
    ,'Julie'
    ,'A'
    ,'Dewson'
    ,2134
    ,81625422
    ,1
    ,53.32
    ,-12.21
)

,(
     1
    ,'Kirsty'
    ,null
    ,'Hull'
    ,4312
    ,96565334
    ,1
    ,1266.00
    ,10.32
);

insert into "ShareDetails".shares
(
     sharedesc
    ,sharetickerid
    ,currentprice
)
values
(
    'FAT-BELLY.COM'
    ,'FBC'
    ,45.20
)

,(
    'NetRadio Inc'
    ,'NRI'
    ,29.79
)

,(
    'Texas Oil Industries'
    ,'TOI'
    ,0.455
)

,(
    'London Bridge Club'
    ,'LBC'
    ,1.46
);

-- ======================================
-- проверим что ввели
select * from "CustomerDetails".customers;
select * from "ShareDetails".shares;