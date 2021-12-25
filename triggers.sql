USE [EmploymentCenter]
GO

--1. Тригер на видалення з таблиці безробітніх, щоб видалялись, дані про їх освіту, очікувану посаду, персональні дані зі зв'язаних таблиць
create trigger deleteJobless
on jobless
for delete
as
begin
	if (@@ROWCOUNT > 2)
	begin
		print 'You can not delete more than 2 rows from this table '
		rollback tran
	end
	else
	begin
		declare @educationId int = (select educationId from deleted)
		declare @personalDataId int = (select personalDataId from deleted)
		declare @expectedJobId int = (select expectedJobId from deleted)
		delete from education where education.id = @educationId
		delete from personalData where personalData.id = @personalDataId
		delete from expectedJob where expectedJob.id = @expectedJobId
	end 
end

