USE [EmploymentCenter]
GO


--1. Представлення усіх актуальних вакансій та компаній з номерами телефону для зв'язку

create view allVacancies as
select vacancy.id, position.name as position ,salary, educationTypeRequired,vacancyDescription, company.name,company.companyAddress, companyPhoneNumbers.phoneNumber from vacancy
join company on company.id  = vacancy.companyId
join companyPhoneNumbers on companyPhoneNumbers.companyId = company.id
join position on position.id = vacancy.positionId

--2. Представлення усіх безробітніх, що стоять на обліку, їх даних, інформації про очікувану ними професію
create view allJoblesses as
select  jobless.id, (Surname + ' ' + personalData.Name + ' ' +  Patronym)as PIB,  
position.name as position, expectedSalary, educationTypeName,workExperience,phoneNumber 
from jobless
join personalData on personalData.id = jobless.personalDataId
join education on education.id = jobless.educationId
join expectedJob on expectedJob.id = jobless.expectedJobId
join position on expectedJob.positionId = position.id

--3. Представлення усіх угод з ПІБ безробітнього,його номером телефона, інформацією про вакансію, даними агента, що уклав угоду
create view allDeals as
select PIB, allJoblesses.phoneNumber as joblessPhone, allVacancies.position,salary, vacancyDescription,allVacancies.name as company, (agent.Surname + ' ' + agent.Name) as agentPIB,agent.phoneNumber as agentPhone from deal
join allJoblesses on deal.joblessId = allJoblesses.id
join allVacancies on allVacancies.id = deal.vacancyId
join agent on deal.agentId = agent.id