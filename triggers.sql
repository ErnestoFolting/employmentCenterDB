USE [EmploymentCenter]
GO

--1. ������ �� ��������� � ������� ���������, ��� ����������, ��� ��� �� �����, ��������� ������, ���������� ��� � ��'������ �������
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

--2. ������ �� ��������� ������������, ��� ������ �������� �� ������ ������ �������� �� ���� ��������
create trigger insertJobless
on jobless
for insert
as
begin
	if (@@ROWCOUNT = 1)
	begin
		declare @joblessId int = (select id from inserted)
		select * from allJoblesses
		join allVacancies on allVacancies.position = allJoblesses.position
		and allVacancies.educationTypeRequired = allJoblesses.educationTypeName
		where allJoblesses.id = @joblessId
	end
end
