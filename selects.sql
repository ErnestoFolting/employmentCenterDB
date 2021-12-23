USE [EmploymentCenter]
GO

select * from jobless

--1.Показати ПІБ безробітніх та скільки вони отримали виплат
select personalData.Surname, personalData.Name, personalData.Patronym, jobless.totalPayment
from jobless 
join personalData on jobless.personalDataId = personalData.id 

--2.Показати з якою освітою найчастіше реєструвались у найпопулярнішому місяці для реєстрації
select top 1 educationTypeName as theMostPopular from education 
join jobless on jobless.educationId = education.id
where month(jobless.registrationDate) = (
select top 1 month(registrationDate) as monthNumber
from jobless
group by month(registrationDate)
order by(count(id) ) DESC)
group by educationTypeName
order by(count(educationId)) DESC


--3.Показати ПІБ та номери телефону людей з Bachelors Degree
select Surname,Name,Patronym, phoneNumber,educationTypeName
from jobless 
join personalData on personalData.id = jobless.personalDataId
join education on education.id = jobless.educationId
where educationTypeName = 'Bachelors Degree'

--4.Показати топ 5 найбільш популярних посад серед безробітніх
select top 5 count(positionId) as countNumber, Name from 
expectedJob
join position on position.id = expectedJob.positionId
group by Name
order by countNumber DESC

--5.Показати середню заробітню плату, на яку розраховують люди з Masters Degree
select AVG(expectedSalary) from education 
join jobless on jobless.educationId = education.id
join expectedJob on expectedJob.id = jobless.expectedJobId
where educationTypeName = 'Masters Degree'


--6.Показати компанії, вакансії яких зараз розміщено та їх номери телефонів
select name,phoneNumber from company
join companyPhoneNumbers on company.id = companyPhoneNumbers.companyId
where company.id in (
select vacancy.companyId from vacancy
)


--7.Показати прізвище та ім'я агента, що сформував найбільшу к-сть угод
select Surname, Name from agent 
where agent.id = (select agentId from(
select top 1 count(agentId) as countNumber,agentId from agent
join deal on agent.id = deal.agentId
group by agentId
order by count(agentId) DESC
) as temp)

--8.Показати топ 5 компаній, у яких найвища середня заробітна плата по вакансіях
select Name 
from company 
where company.id in(
select top 5 companyId from company
join vacancy on company.id = vacancy.companyId
group by (companyId)
order by  AVG(salary) DESC
)

--9.Показати список 5 найбільш затребуваних посад та середні заробітні плати по них по ринку
select name, avgSalary,countNumber from position
join (
select top 5 positionId,avg(salary) as avgSalary, count(positionId) as countNumber
from vacancy
group by positionId
order by countNumber DESC 
)as temp on position.id = temp.positionId

--10.Показати ПІБ та номери телефонів всіх людей, по яких сформовано угоди
select (Surname + ' ' + Name + ' ' +  Patronym)as PIB, phoneNumber from personalData
join(
select * from jobless 
where jobless.id in 
(select joblessId from deal)
)as temp on personalData.id = temp.personalDataId