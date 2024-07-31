-- В БД понятие пользователя вкладывается в роль
-- user == role
create role oleg login password 'password' createdb;
create role pznoleg login password 'password' createdb;
