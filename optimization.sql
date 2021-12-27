USE [EmploymentCenter]
GO


 select  Surname,personalData.name, Patronym, position.name,salary,vacancyDescription  from vacancy
 join position on position.id = vacancy.positionId
 join expectedJob on expectedJob.positionId = position.id
 join jobless on jobless.expectedJobId = expectedJob.id
 join education on education.id = jobless.educationId
 join personalData on personalData.id = jobless.personalDataId
 where education.educationTypeName = vacancy.educationTypeRequired
 and position.name  = 'Optometrist'

 create index index1 on vacancy(positionId)