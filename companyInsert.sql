USE [EmploymentCenter]
GO

select * from company

SET IDENTITY_INSERT company ON
INSERT INTO company(id,Name,phoneNumber,companyAddress)
VALUES
  (1,'Nunc Sed Ltd','+380953473759','150-9205 Vel Road'),
  (2,'Adipiscing Elit Corporation','+380636056449','325-3984 In Avenue'),
  (3,'Malesuada Integer Corp.','+380636775387','891-6939 Tortor Av.'),
  (4,'Lorem Semper Incorporated','+380958310647','Ap #146-6033 Nibh St.'),
  (5,'Turpis Incorporated','+380957349111','742-6199 Donec Road'),
  (6,'Ante Maecenas PC','+380631621495','P.O. Box 678, 6306 Odio Avenue'),
  (7,'Non Hendrerit LLC','+380630881113','506-234 Libero. Street'),
  (8,'Ultrices A Auctor Inc.','+380953058156','P.O. Box 154, 665 Posuere St.'),
  (9,'Consectetuer Adipiscing Elit PC','+380952101942','2900 Auctor Rd.'),
  (10,'Curabitur Corp.','+380954042836','P.O. Box 462, 1619 Nibh Ave');
SET IDENTITY_INSERT company OFF