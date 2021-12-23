USE [EmploymentCenter]
GO

select * from expectedJob

SET IDENTITY_INSERT expectedJob ON
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (1,1,14000),
  (2,2,34000),
  (3,3,23000),
  (4,4,8000),
  (5,5,16000),
  (6,6,6000),
  (7,7,9000),
  (8,8,44000),
  (9,9,41000),
  (10,10,9000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (11,11,44000),
  (12,12,20000),
  (13,13,23000),
  (14,14,28000),
  (15,15,34000),
  (16,16,42000),
  (17,17,12000),
  (18,18,12000),
  (19,19,21000),
  (20,20,13000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (21,1,33000),
  (22,2,7000),
  (23,3,47000),
  (24,4,31000),
  (25,5,30000),
  (26,6,35000),
  (27,7,36000),
  (28,8,26000),
  (29,9,48000),
  (30,10,11000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (31,11,33000),
  (32,12,40000),
  (33,13,32000),
  (34,14,35000),
  (35,15,49000),
  (36,16,8000),
  (37,17,50000),
  (38,18,18000),
  (39,19,45000),
  (40,20,22000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (41,1,10000),
  (42,2,6000),
  (43,3,8000),
  (44,4,22000),
  (45,9,41000),
  (46,9,6000),
  (47,15,15000),
  (48,1,11000),
  (49,6,34000),
  (50,18,43000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (51,6,38000),
  (52,1,29000),
  (53,3,10000),
  (54,6,43000),
  (55,18,23000),
  (56,17,36000),
  (57,12,29000),
  (58,8,25000),
  (59,18,21000),
  (60,3,37000);
INSERT INTO expectedJob (id,positionId,expectedSalary)
VALUES
  (61,17,41000),
  (62,10,11000),
  (63,8,8000),
  (64,19,18000),
  (65,3,48000),
  (66,11,15000),
  (67,19,17000),
  (68,3,27000),
  (69,10,8000),
  (70,3,41000);

SET IDENTITY_INSERT expectedJob OFF
