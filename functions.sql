USE [EmploymentCenter]
GO

--1.�������, �� ������ ���������� ��� ������������� ��������� �� ������� ����� ����
create function registratedInDates
(
	@dateFrom smalldatetime,
	@dateTo smalldatetime
)
returns @tempTable Table (PIB nvarchar(100), phoneNumber nvarchar(13),totalPayment int, registrationDate smalldatetime)
as
begin
	insert into @tempTable
		select PIB, phoneNumber,totalPayment,registrationDate from jobless
		join allJoblesses on jobless.id = allJoblesses.id
		where registrationDate > @dateFrom and registrationDate < @dateTo
	return
end

select * from dbo.registratedInDates('2021-04-01','2022-01-01')

