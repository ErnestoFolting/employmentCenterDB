USE [EmploymentCenter]
GO

select * from vacancy
drop table payment

CREATE TABLE [dbo].[personalData](
	[id] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronym] [nvarchar](50) NOT NULL,
	[phoneNumber] [nvarchar](13) NOT NULL,
	workExperience nvarchar(200), -- can be NULL
) ON [PRIMARY]

GO

Alter table personalData
Add constraint personalDataPhone unique(phoneNumber)

Alter table personalData
Add constraint personalDataPhoneFormat CHECK (phoneNumber like '+380%' and phoneNumber not like '%[a-Z]%')
GO

Alter table personalData
Add constraint personalDataSurname
check (Surname NOT LIKE '%[^A-Za-z]%')
GO

Alter table personalData
Add constraint personalDataName
check (Name NOT LIKE '%[^A-Za-z]%')
GO


Alter table personalData
Add constraint personalDataPatronym
check (Patronym NOT LIKE '%[^A-Za-z]%')
GO



CREATE TABLE [dbo].[education](
	[id] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Specialty] [nvarchar](50) NOT NULL,
	[educationTypeName] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE education
ADD CONSTRAINT check_typeName CHECK (educationTypeName IN ('High School','Associates Degree','Bachelors Degree','Masters Degree'))

CREATE TABLE payment(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	registrationDate smalldatetime check (registrationDate <= GETDATE()) DEFAULT GETDATE(),
	totalPayment as Datediff(month,registrationDate,GETDATE()) * 2000     
) 
GO

CREATE TABLE expectedJob(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	positionId int NOT NULL FOREIGN KEY 
	REFERENCES position(id),
	expectedSalary int check (expectedSalary>0)  NOT NULL,
) 
GO

alter table expectedJob
drop constraint FK_positionId

ALTER TABLE expectedJob
ADD CONSTRAINT FK_positionId
    FOREIGN KEY (positionId)
    REFERENCES position (id)

CREATE TABLE position(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) NOT NULL UNIQUE,
) 
GO

Alter table position
Add constraint positionName
check (name NOT LIKE '%[^A-Za-z ]%')
GO

select * from position

CREATE TABLE jobless(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	personalDataId int NOT NULL UNIQUE FOREIGN KEY 
	REFERENCES personalData(id),
	paymentId int NOT NULL UNIQUE FOREIGN KEY 
	REFERENCES payment(id),
	educationId int NOT NULL UNIQUE FOREIGN KEY 
	REFERENCES education(id),
	expectedJobId int NOT NULL UNIQUE FOREIGN KEY 
	REFERENCES expectedJob(id),
) 
GO



CREATE TABLE agent(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Surname nvarchar(50) NOT NULL,
	Name nvarchar(50) NOT NULL,
	phoneNumber nvarchar(13) NOT NULL
) 
GO

Alter table agent
Add constraint agentPhone unique(phoneNumber)

Alter table agent
Add constraint agentPhoneFormat CHECK (phoneNumber like '+380%' and phoneNumber not like '%[a-Z]%')
GO

Alter table agent
Add constraint agentSurname
check (Surname NOT LIKE '%[^A-Za-z]%')
GO

Alter table agent
Add constraint agentName
check (Name NOT LIKE '%[^A-Za-z]%')
GO


CREATE TABLE company(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	name nvarchar(50) NOT NULL,
	phoneNumber nvarchar(13) NOT NULL,
	companyAddress nvarchar(50) NOT NULL,
) 
GO

Alter table company
Add constraint companyPhone unique(phoneNumber)

Alter table company
Add constraint companyPhoneFormat CHECK (phoneNumber like '+380%' and phoneNumber not like '%[a-Z]%')
GO


CREATE TABLE vacancy(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	companyId int NOT NULL FOREIGN KEY 
	REFERENCES company(id),
	positionId int NOT NULL FOREIGN KEY 
	REFERENCES position(id),
	salary int check (salary>0) NOT NULL,
	educationTypeRequired nvarchar(30) NOT NULL,
	vacancyDescription nvarchar(200) NOT NULL
) 
GO

ALTER TABLE vacancy
ADD CONSTRAINT typeRequired_check CHECK (educationTypeRequired IN ('High School','Associates Degree','Bachelors Degree','Masters Degree'))

CREATE TABLE deal(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	agentId int NOT NULL FOREIGN KEY 
	REFERENCES agent(id),
	vacancyId int NOT NULL FOREIGN KEY 
	REFERENCES vacancy(id),
	joblessId int NOT NULL FOREIGN KEY 
	REFERENCES jobless(id),
	dateOfCreation smalldatetime default getdate()
	Constraint uniquePos Unique(vacancyId,joblessId)
) 
GO

ALTER TABLE deal
ADD CONSTRAINT FK_joblessId
    FOREIGN KEY (joblessId)
    REFERENCES jobless (id)
	ON DELETE CASCADE

ALTER TABLE deal
ADD CONSTRAINT FK_vacancyId
    FOREIGN KEY (vacancyId)
    REFERENCES vacancy (id)
	ON DELETE CASCADE

ALTER TABLE deal
ADD CONSTRAINT FK_agentId
    FOREIGN KEY (agentId)
    REFERENCES agent (id)
	ON DELETE CASCADE

