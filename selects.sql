USE [EmploymentCenter]
GO

select * from jobless

--1. �������� ϲ� ��������� �� ������ ���� �������� ������
select personalData.Surname, personalData.Name, personalData.Patronym, jobless.totalPayment
from jobless 
join personalData on jobless.personalDataId = personalData.id 

--2. �������� � ���� ������ ��������� ������������ � ��������������� ����� ��� ���������
select top 1 educationTypeName as theMostPopular from education 
join jobless on jobless.educationId = education.id
where month(jobless.registrationDate) = (
select top 1 month(registrationDate) as monthNumber
from jobless
group by month(registrationDate)
order by(count(id) ) DESC)
group by educationTypeName
order by(count(educationId)) DESC


--3. �������� ϲ� �� ������ �������� ����� � Bachelors Degree
select Surname,Name,Patronym, phoneNumber,educationTypeName
from jobless 
join personalData on personalData.id = jobless.personalDataId
join education on education.id = jobless.educationId
where educationTypeName = 'Bachelors Degree'

--4. �������� ��� 5 ������� ���������� ����� ����� ���������
select top 5 count(positionId) as countNumber, Name from 
expectedJob
join position on position.id = expectedJob.positionId
group by Name
order by countNumber DESC

--5. �������� ������� �������� �����, �� ��� ������������ ���� � Masters Degree
select AVG(expectedSalary) from education 
join jobless on jobless.educationId = education.id
join expectedJob on expectedJob.id = jobless.expectedJobId
where educationTypeName = 'Masters Degree'


--6. �������� ������, ������ ���� ����� �������� �� �� ������ ��������
select name,phoneNumber from company
join companyPhoneNumbers on company.id = companyPhoneNumbers.companyId
where company.id in (
select vacancy.companyId from vacancy
)


--7. �������� ������� �� ��'� ������, �� ��������� �������� �-��� ����
select Surname, Name from agent 
where agent.id = (select agentId from(
select top 1 count(agentId) as countNumber,agentId from agent
join deal on agent.id = deal.agentId
group by agentId
order by count(agentId) DESC
) as temp)

--8. �������� ��� 5 �������, � ���� ������� ������� �������� ����� �� ��������
select Name 
from company 
where company.id in(
select top 5 companyId from company
join vacancy on company.id = vacancy.companyId
group by (companyId)
order by  AVG(salary) DESC
)

--9. �������� ������ 5 ������� ������������ ����� �� ������ ������� ����� �� ��� �� �����
select name, avgSalary,countNumber from position
join (
select top 5 positionId,avg(salary) as avgSalary, count(positionId) as countNumber
from vacancy
group by positionId
order by countNumber DESC 
)as temp on position.id = temp.positionId

--10. �������� ϲ� �� ������ �������� ��� �����, �� ���� ���������� �����
select (Surname + ' ' + Name + ' ' +  Patronym)as PIB, phoneNumber from personalData
join(
select * from jobless 
where jobless.id in 
(select joblessId from deal)
)as temp on personalData.id = temp.personalDataId

--11. �������� �� ������ �� ������ ����� �� � ������ ��������� ������
declare @posada nvarchar(20) = 'Driver'
declare @atLeat int = 10000
select * from vacancy where vacancy.positionId = (
	select id 
	from position 
	where name = @posada
) and salary > @atLeat

--12. �������� �� ������ �� ������, �� �� ����������, �� ������� ����� � ������ ������, ������������� �� �������� �� �������� ��������
declare @osvita nvarchar(30) = 'High School'

select position.name,salary, company.name, companyPhoneNumbers.phoneNumber,educationTypeRequired from vacancy
join company on vacancy.companyId = company.id
join position on position.id = vacancy.positionId
join companyPhoneNumbers on companyPhoneNumbers.companyId = company.id
where educationTypeRequired = @osvita
order by salary DESC


--13. �������� ��� ���������, �� ������� ������������ �� ����� ������ � ������ ������, ��������� � ���, ��� ����� ����� �������� ������
 declare @osvitaRequired nvarchar(30) = 'Bachelors Degree'
 declare @expectedPosition nvarchar(30) = 'Financial Manager'

 select Surname,Name,Patronym,phoneNumber,expectedSalary from personalData
 join(select personalDataId,expectedSalary from(
	select personalDataId,expectedSalary,name from jobless 
		join expectedJob on jobless.expectedJobId = expectedJob.id
		join position on position.id = expectedJob.positionId 
		join education on education.id = jobless.educationId 
		where education.educationTypeName = @osvitaRequired 
		and position.name = @expectedPosition) as temp
 )as temp2 on temp2.personalDataId = personalData.id
 order by expectedSalary
 
 --14. �������� ϲ� ���������, �� ������ ��������, ��������� � ���, ���� �������� ���������� ������ �� ����� �� ��� �����
 select (Surname + ' ' + Name + ' ' +  Patronym)as PIB, phoneNumber, 
 (24 - (month(getdate()) - month(registrationDate))) as monthsRemaining
 from jobless
 join personalData on personalData.id = jobless.personalDataId
 order by monthsRemaining

 --15. ���������� ������� �������
 select name, phoneNumber 
 from company
 join companyPhoneNumbers on company.id = companyPhoneNumbers.companyId 

 --16. �� ������ �������� ������������ ������� �� �����, �� ���������� ��� ����� 
 declare @phoneNumber nvarchar(13) = '+380956078557'
 select position.name,vacancy.salary,vacancy.vacancyDescription, dateOfCreation from personalData
 join jobless on personalData.Id = jobless.personalDataId
 join deal on deal.joblessId = jobless.id
 join vacancy on vacancy.id = deal.vacancyId
 join position on position.id = vacancy.positionId
 where personalData.phoneNumber = @phoneNumber


 --17. �� ������ �������� ������ ������ �� ����� �� ������ 
 declare @phoneNumberToFind nvarchar(13) = '+380739029871'
 select Name, companyAddress from company
 where company.id = (
  select companyId from companyPhoneNumbers where phoneNumber = @phoneNumberToFind
 )

 --18. �� ������ ������ �������� ��� �����, �� ������� � ����� �� ��
 declare @vacancyNumber int = 1
 select (Surname + ' ' + Name + ' ' +  Patronym)as PIB, phoneNumber,workExperience,dateOfCreation from vacancy
 join deal on deal.vacancyId = vacancy.id
 join jobless on jobless.id = deal.joblessId
 join personalData on personalData.id = jobless.personalDataId
 where vacancy.id = @vacancyNumber

 --19. ������� ����� �� ������ �� �� �������� �� ������ �����
 declare @monthToFind int = 12
 select vacancyId,joblessId,dateOfCreation,Surname,Name,phoneNumber from deal 
 join agent on agent.id = deal.agentId
 where month(dateOfCreation) = @monthToFind

 --20. ������� �� ���� ��������� �� ������� �� �������� �� ������ �� ����� 
 select Surname,personalData.name, Patronym, position.name,salary,vacancyDescription from vacancy
 join position on position.id = vacancy.positionId
 join expectedJob on expectedJob.positionId = position.id
 join jobless on jobless.expectedJobId = expectedJob.id
 join education on education.id = jobless.educationId
 join personalData on personalData.id = jobless.personalDataId
 where education.educationTypeName = vacancy.educationTypeRequired