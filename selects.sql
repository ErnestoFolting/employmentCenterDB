USE [EmploymentCenter]
GO

select * from jobless

--1.�������� ϲ� ��������� �� ������ ���� �������� ������
select personalData.Surname, personalData.Name, personalData.Patronym, jobless.totalPayment
from jobless 
join personalData on jobless.personalDataId = personalData.id 

--2.�������� � ���� ������ ��������� ������������ � ��������������� ����� ��� ���������
select top 1 educationTypeName as theMostPopular from education 
join jobless on jobless.educationId = education.id
where month(jobless.registrationDate) = (
select top 1 month(registrationDate) as monthNumber
from jobless
group by month(registrationDate)
order by(count(id) ) DESC)
group by educationTypeName
order by(count(educationId)) DESC


--3.�������� ϲ� �� ������ �������� ����� � Bachelors Degree
select Surname,Name,Patronym, phoneNumber,educationTypeName
from jobless 
join personalData on personalData.id = jobless.personalDataId
join education on education.id = jobless.educationId
where educationTypeName = 'Bachelors Degree'

--4.�������� ��� 5 ������� ���������� ����� ����� ���������
select top 5 count(positionId) as countNumber, Name from 
expectedJob
join position on position.id = expectedJob.positionId
group by Name
order by countNumber DESC

--5.�������� ������� �������� �����, �� ��� ������������ ���� � Masters Degree
select AVG(expectedSalary) from education 
join jobless on jobless.educationId = education.id
join expectedJob on expectedJob.id = jobless.expectedJobId
where educationTypeName = 'Masters Degree'


--6.�������� ������, ������ ���� ����� �������� �� �� ������ ��������
select name,phoneNumber from company
join companyPhoneNumbers on company.id = companyPhoneNumbers.companyId
where company.id in (
select vacancy.companyId from vacancy
)


--7.�������� ������� �� ��'� ������, �� ��������� �������� �-��� ����
select Surname, Name from agent 
where agent.id = (select agentId from(
select top 1 count(agentId) as countNumber,agentId from agent
join deal on agent.id = deal.agentId
group by agentId
order by count(agentId) DESC
) as temp)

--8.�������� ��� 5 �������, � ���� ������� ������� �������� ����� �� ��������
select Name 
from company 
where company.id in(
select top 5 companyId from company
join vacancy on company.id = vacancy.companyId
group by (companyId)
order by  AVG(salary) DESC
)

--9.�������� ������ 5 ������� ������������ ����� �� ������ ������� ����� �� ��� �� �����
select name, avgSalary,countNumber from position
join (
select top 5 positionId,avg(salary) as avgSalary, count(positionId) as countNumber
from vacancy
group by positionId
order by countNumber DESC 
)as temp on position.id = temp.positionId

--10.�������� ϲ� �� ������ �������� ��� �����, �� ���� ���������� �����
select (Surname + ' ' + Name + ' ' +  Patronym)as PIB, phoneNumber from personalData
join(
select * from jobless 
where jobless.id in 
(select joblessId from deal)
)as temp on personalData.id = temp.personalDataId