-- 6. Задание 3. Создание хранимой процедуры
-- ==============================================================
\connect ApressFinancial

create procedure "CustomerDetails".spu_inscustomer(
     FirstName varchar(50)
    ,LastName varchar(50)
    ,CustTitle int
    ,CustInitials varchar(10)
    ,AddressId int
    ,AccountNumber varchar(15)
    ,AccountTypeId int
)
language plpgsql
as $$
begin
    insert into "CustomerDetails".customers (
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
    values (
        CustTitle
        ,FirstName
        ,CustInitials
        ,LastName
        ,AddressId
        ,AccountNumber
        ,AccountTypeId
        ,0
        ,0
    );
end;
$$
