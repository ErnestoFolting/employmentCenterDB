USE [EmploymentCenter]
GO

select * from company

SET IDENTITY_INSERT company ON
INSERT INTO company(id,Name,companyAddress)
VALUES
  (1,'Nunc Sed Ltd','150-9205 Vel Road'),
  (2,'Adipiscing Elit Corporation','325-3984 In Avenue'),
  (3,'Malesuada Integer Corp.','891-6939 Tortor Av.'),
  (4,'Lorem Semper Incorporated','Ap #146-6033 Nibh St.'),
  (5,'Turpis Incorporated','742-6199 Donec Road'),
  (6,'Ante Maecenas PC','P.O. Box 678, 6306 Odio Avenue'),
  (7,'Non Hendrerit LLC','506-234 Libero. Street'),
  (8,'Ultrices A Auctor Inc.','P.O. Box 154, 665 Posuere St.'),
  (9,'Consectetuer Adipiscing Elit PC','2900 Auctor Rd.'),
  (10,'Curabitur Corp.','P.O. Box 462, 1619 Nibh Ave');
SET IDENTITY_INSERT company OFF