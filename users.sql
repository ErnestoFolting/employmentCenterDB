USE [EmploymentCenter]
GO

--1. Права адміністратора, у якого є всі права 
create login administrator with password = 'admin'
create user administrator for login administrator 

exec sp_addrolemember N'db_owner', N'administrator'

--2. Права для того, хто може тільки читати дані
create login reader with password = 'reader'
create user reader for login reader 

exec sp_addrolemember N'db_datareader', N'reader'

--3. Права для того, хто може видаляти, додавати дані, виконувати процедури
create login writer with password = 'writer'
create user writer for login writer

grant execute on findDeals to writer
grant execute on findDealsForCompany to writer 
grant execute on addDeal to writer 
grant select on registratedInDates to writer
grant select on showTopPositions to writer
grant select on showTopAgents to writer

exec sp_addrolemember N'db_datawriter', N'writer'
exec sp_addrolemember N'db_datareader', N'writer'
