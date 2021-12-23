USE [EmploymentCenter]
GO

select * from education

SET IDENTITY_INSERT [education] ON
INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (1,'Software Engineer','High School'),
  (2,'Economics Chemistry','High School'),
  (3,'Economics Chemistry','High School'),
  (4,'Journalistics Software','High School'),
  (5,'Software Engineer','High School'),
  (6,'Journalistics Software','High School'),
  (7,'Manager Financial','High School'),
  (8,'Manager Financial','High School'),
  (9,'Economics Chemistry','High School'),
  (10,'Journalistics Software','High School');
INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (11,'Engineer Mathematics','Associates Degree'),
  (12,'Economics Chemistry','Associates Degree'),
  (13,'Designer Business','Associates Degree'),
  (14,'Software Engineer','Associates Degree'),
  (15,'Financial Journalistics','Associates Degree'),
  (16,'Financial Journalistics','Associates Degree'),
  (17,'Journalistics Software','Associates Degree'),
  (18,'Chemistry Designer','Associates Degree'),
  (19,'Physics Cook','Associates Degree'),
  (20,'Mathematics Economics','Associates Degree');
  INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (21,'Financial Journalistics','Associates Degree'),
  (22,'Physics Cook','Associates Degree'),
  (23,'Engineer Mathematics','Associates Degree'),
  (24,'Engineer Mathematics','Associates Degree'),
  (25,'Mathematics Economics','Associates Degree'),
  (26,'Software Engineer','Associates Degree'),
  (27,'Business Physics','Associates Degree'),
  (28,'Journalistics Software','Associates Degree'),
  (29,'Designer Business','Associates Degree'),
  (30,'Engineer Mathematics','Associates Degree');
  INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (31,'Manager Financial','Bachelors Degree'),
  (32,'Economics Chemistry','Bachelors Degree'),
  (33,'Software Engineer','Bachelors Degree'),
  (34,'Physics Cook','Bachelors Degree'),
  (35,'Financial Journalistics','Bachelors Degree'),
  (36,'Chemistry Designer','Bachelors Degree'),
  (37,'Designer Business','Bachelors Degree'),
  (38,'Manager Financial','Bachelors Degree'),
  (39,'Journalistics Software','Bachelors Degree'),
  (40,'Chemistry Designer','Bachelors Degree');
INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (41,'Journalistics Software','Bachelors Degree'),
  (42,'Software Engineer','Bachelors Degree'),
  (43,'Software Engineer','Bachelors Degree'),
  (44,'Engineer Mathematics','Bachelors Degree'),
  (45,'Physics Cook','Bachelors Degree'),
  (46,'Physics Cook','Bachelors Degree'),
  (47,'Economics Chemistry','Bachelors Degree'),
  (48,'Mathematics Economics','Bachelors Degree'),
  (49,'Business Physics','Bachelors Degree'),
  (50,'Engineer Mathematics','Bachelors Degree');
INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (51,'Journalistics Software','Masters Degree'),
  (52,'Business Physics','Masters Degree'),
  (53,'Software Engineer','Masters Degree'),
  (54,'Mathematics Economics','Masters Degree'),
  (55,'Business Physics','Masters Degree'),
  (56,'Software Engineer','Masters Degree'),
  (57,'Physics Cook','Masters Degree'),
  (58,'Journalistics Software','Masters Degree'),
  (59,'Financial Journalistics','Masters Degree'),
  (60,'Economics Chemistry','Masters Degree');
INSERT INTO [education] (id,Specialty,educationTypeName)
VALUES
  (61,'Chemistry Designer','Masters Degree'),
  (62,'Financial Journalistics','Masters Degree'),
  (63,'Designer Business','Masters Degree'),
  (64,'Designer Business','Masters Degree'),
  (65,'Financial Journalistics','Masters Degree'),
  (66,'Manager Financial','Masters Degree'),
  (67,'Software Engineer','Masters Degree'),
  (68,'Business Physics','Masters Degree'),
  (69,'Financial Journalistics','Masters Degree'),
  (70,'Manager Financial','Masters Degree');

SET IDENTITY_INSERT [education] OFF