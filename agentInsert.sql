USE [EmploymentCenter]
GO

select * from agent

SET IDENTITY_INSERT agent ON
INSERT INTO agent(id,Surname,Name,phoneNumber)
VALUES
  (1,'Alika','Webster','+380633404419'),
  (2,'Blaze','Rios','+380633255519'),
  (3,'Kalia','Page','+380956867513'),
  (4,'Hyacinth','Rodgers','+380630235297'),
  (5,'Carolyn','Hurst','+380953058617');
SET IDENTITY_INSERT agent OFF