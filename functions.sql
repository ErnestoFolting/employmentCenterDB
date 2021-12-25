USE [EmploymentCenter]
GO

--1. �������, �� ������ ���������� ��� ������������� ��������� �� ������� ����� ����
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

--2. �������, �� ������ ��� 5 ����� �� ������ ������� ����� �� ���, ��������� � ����� ���������� �� ����� �����
create function showTopPositions
( 
)
returns @tempTable Table(position nvarchar(30), avgSalary int, countOfVacancies int)
as
begin
	insert into @tempTable 
		select top 5 position, avg(salary) as avgSalary, count(id) as countOfVacancies from allVacancies
		group by position
		order by countOfVacancies DESC
	return
end

select * from dbo.showTopPositions()

--3. �������, �� ������� ������, �� ����� ���� � 2 ��������� ����� �� �������� �-��� ���� ��������� ���� 
create function showTopAgents
( 
)
returns @tempTable Table(Surname nvarchar(30), Name nvarchar(30), dealsNumber int)
as
begin
	insert into @tempTable 
		select Surname, Name, count(deal.id) as dealsNumber from agent 
		join deal on deal.agentId = agent.id
		group by Surname, Name
		having count(deal.id) > 1
		order by dealsNumber DESC
	return
end

select * from dbo.showTopAgents()
