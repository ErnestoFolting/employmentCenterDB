USE [EmploymentCenter]
GO

select * from deal

SET IDENTITY_INSERT deal ON
INSERT INTO deal (id, agentId,vacancyId,joblessId)
VALUES
(1,1,1,15),
(2,2,2,55),
(3,3,3,7),
(4,4,7,36),
(5,5,18,63),
(6,2,6,64),
(7,2,26,21),
(8,1,9,30),
(9,3,28,38),
(10,4,26,1)
SET IDENTITY_INSERT deal OFF

/*select for companies*/
select personalData.Surname + ' ' + personalData.Name + ' ' + personalData.Patronym as FIO , phoneNumber, position.name as expectedPosition, expectedSalary, Specialty, educationTypeName  from jobless
join personalData on personalDataId = personalData.id
join education on educationId = education.id
join expectedJob on expectedJobId = expectedJob.id
join position on positionId = position.id


/*select for jobless*/
select position.name as position, salary, educationTypeRequired, company.name as companyName, phoneNumber, companyAddress
from vacancy
join company on company.id = companyId
join position on positionId = position.id

