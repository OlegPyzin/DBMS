create database "ApressFinancial"
    with
    owner = postgres
    encoding = 'UTF8'
--    LOCALE_PROVIDER = 'icu'
--    LC_COLLATE = 'Russian_Russia.1251'
--    LC_TYPE = 'UTF-8'
    tablespace = pg_default
    connection limit = 10
    is_template = false;