USE [EmploymentCenter]
GO

select * from jobless

SET IDENTITY_INSERT [jobless] ON
INSERT INTO jobless(id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  --(1,1,1,1,'2020-09-15'),
  (2,2,2,2,'2021-01-12'),
  (3,3,3,3,'2021-02-12'),
  (4,4,4,4,'2021-02-7'),
  (5,5,5,5,'2021-01-22'),
  (6,6,6,6,'2021-03-7'),
  (7,7,7,7,'2021-03-25'),
  (8,8,8,8,'2021-03-27'),
  (9,9,9,9,'2021-02-18'),
  (10,10,10,10,'2021-02-26'),
  (11,11,11,11,'2021-02-3');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (12,12,12,12,'2021-04-8'),
  (13,13,13,13,'2021-04-8'),
  (14,14,14,14,'2021-04-7'),
  (15,15,15,15,'2021-04-24'),
  (16,16,16,16,'2021-04-29'),
  (17,17,17,17,'2021-04-20'),
  (18,18,18,18,'2021-04-2'),
  (19,19,19,19,'2021-04-7'),
  (20,20,20,20,'2021-05-17'),
  (21,21,21,21,'2021-05-11');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (22,22,22,22,'2021-05-6'),
  (23,23,23,23,'2021-05-9'),
  (24,24,24,24,'2021-05-13'),
  (25,25,25,25,'2021-05-20'),
  (26,26,26,26,'2021-06-23'),
  (27,27,27,27,'2021-06-9'),
  (28,28,28,28,'2021-06-1'),
  (29,29,29,29,'2021-06-8'),
  (30,30,30,30,'2021-06-8'),
  (31,31,31,31,'2021-06-27');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (32,32,32,32,'2021-06-16'),
  (33,33,33,33,'2021-06-23'),
  (34,34,34,34,'2021-06-16'),
  (35,35,35,35,'2021-06-2'),
  (36,36,36,36,'2021-06-6'),
  (37,37,37,37,'2021-06-26'),
  (38,38,38,38,'2020-06-26'),
  (39,39,39,39,'2021-06-22'),
  (40,40,40,40,'2021-07-14'),
  (41,41,41,41,'2021-07-10');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (42,42,42,42,'2021-07-18'),
  (43,43,43,43,'2021-08-30'),
  (44,44,44,44,'2021-08-15'),
  (45,45,45,45,'2021-07-17'),
  (46,46,46,46,'2021-08-14'),
  (47,47,47,47,'2021-07-3'),
  (48,48,48,48,'2021-08-6'),
  (49,49,49,49,'2021-07-22'),
  (50,50,50,50,'2021-08-30'),
  (51,51,51,51,'2021-07-4');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (52,52,52,52,'2021-07-2'),
  (53,53,53,53,'2021-09-15'),
  (54,54,54,54,'2021-09-3'),
  (55,55,55,55,'2021-09-28'),
  (56,56,56,56,'2021-09-13'),
  (57,57,57,57,'2021-09-25'),
  (58,58,58,58,'2021-09-8'),
  (59,59,59,59,'2021-10-1'),
  (60,60,60,60,'2021-10-4'),
  (61,61,61,61,'2021-10-30');
INSERT INTO [jobless] (id,personalDataId,educationId,expectedJobId,registrationDate)
VALUES
  (62,62,62,62,'2021-10-2'),
  (63,63,63,63,'2021-11-12'),
  (64,64,64,64,'2021-11-19'),
  (65,65,65,65,'2021-11-4'),
  (66,66,66,66,'2021-11-8'),
  (67,67,67,67,'2021-12-3'),
  (68,68,68,68,'2021-12-10'),
  (69,69,69,69,'2021-12-22'),
  (70,70,70,70,'2021-12-22');
SET IDENTITY_INSERT [jobless] OFF