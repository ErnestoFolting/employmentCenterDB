USE [EmploymentCenter]
GO

select * from position

SET IDENTITY_INSERT position ON
INSERT INTO position (id,name)
VALUES
  (1,'Physician Assistant'),
  (2,'Software Developer'),
  (3,'Nurse Practitioner'),
  (4,'Physician'),
  (5,'Statistician'),
  (6,'Data Scientist'),
  (7,'Dentist'),
  (8,'Veterinarian'),
  (9,'Financial Manager'),
  (10,'Physical Therapist');
SET IDENTITY_INSERT position OFF

SET IDENTITY_INSERT position ON
INSERT INTO position (id,name)
VALUES
  (11,'Lawyer'),
  (12,'Hair Stylist'),
  (13,'Orthodontist'),
  (14,'Mechanical Engineer'),
  (15,'Financial Advisor'),
  (16,'Cartographer'),
  (17,'Pilot'),
  (18,'Driver'),
  (19,'Optometrist'),
  (20,'Mathematician');
SET IDENTITY_INSERT position OFF
