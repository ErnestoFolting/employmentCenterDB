USE [EmploymentCenter]
GO

select * from vacancy

SET IDENTITY_INSERT vacancy ON
INSERT INTO [vacancy] (id,companyId,positionId,salary,educationTypeRequired,vacancyDescription)
VALUES
  (1,2,15,27000,'Associates Degree','Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam'),
  (2,5,18,15000,'Masters Degree','lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam'),
  (3,6,7,30000,'High School','scelerisque scelerisque dui. Suspendisse ac metus vitae'),
  (4,8,14,35000,'High School','nunc, ullamcorper eu, euismod ac, fermentum'),
  (5,7,5,19000,'Associates Degree','in felis. Nulla tempor augue ac ipsum. Phasellus'),
  (6,3,19,13000,'Masters Degree','dolor. Nulla semper tellus id nunc interdum feugiat. Sed'),
  (7,3,16,31000,'Bachelors Degree','orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus'),
  (8,4,3,42000,'Bachelors Degree','et, rutrum eu, ultrices sit amet,'),
  (9,8,10,30000,'Associates Degree','et, euismod et, commodo at, libero. Morbi'),
  (10,4,15,42000,'High School','Nullam nisl. Maecenas malesuada fringilla est.');
INSERT INTO [vacancy] (id,companyId,positionId,salary,educationTypeRequired,vacancyDescription)
VALUES
  (11,7,8,8000,'High School','eu dolor egestas rhoncus. Proin nisl'),
  (12,2,13,50000,'Bachelors Degree','non leo. Vivamus nibh dolor, nonummy ac, feugiat'),
  (13,6,17,13000,'Masters Degree','sit amet ante. Vivamus non'),
  (14,4,7,43000,'Masters Degree','Fusce aliquet magna a neque. Nullam ut nisi a'),
  (15,7,11,37000,'Associates Degree','faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse'),
  (16,2,7,21000,'Associates Degree','velit dui, semper et, lacinia vitae,'),
  (17,2,16,44000,'Masters Degree','sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed'),
  (18,2,8,15000,'High School','congue, elit sed consequat auctor, nunc nulla vulputate dui,'),
  (19,2,19,39000,'Masters Degree','ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor.'),
  (20,10,18,23000,'Bachelors Degree','quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc');
INSERT INTO [vacancy] (id,companyId,positionId,salary,educationTypeRequired,vacancyDescription)
VALUES
  (21,6,15,18000,'Masters Degree','ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam'),
  (22,9,7,11000,'High School','semper rutrum. Fusce dolor quam, elementum at,'),
  (23,4,5,34000,'Associates Degree','vitae, aliquet nec, imperdiet nec, leo. Morbi neque'),
  (24,4,6,15000,'High School','ac, fermentum vel, mauris. Integer'),
  (25,5,16,13000,'High School','mattis semper, dui lectus rutrum urna, nec luctus felis'),
  (26,7,1,46000,'High School','Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus'),
  (27,7,19,16000,'High School','et ipsum cursus vestibulum. Mauris magna. Duis'),
  (28,5,18,14000,'Bachelors Degree','faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare.'),
  (29,7,2,12000,'High School','vehicula aliquet libero. Integer in magna. Phasellus dolor'),
  (30,8,14,14000,'Bachelors Degree','magnis dis parturient montes, nascetur ridiculus');
INSERT INTO [vacancy] (id,companyId,positionId,salary,educationTypeRequired,vacancyDescription)
VALUES
  (31,5,11,24000,'Bachelors Degree','ridiculus mus. Donec dignissim magna a'),
  (32,5,19,31000,'High School','Integer vulputate, risus a ultricies adipiscing, enim'),
  (33,9,3,45000,'High School','nisl arcu iaculis enim, sit amet ornare lectus justo'),
  (34,10,19,10000,'Bachelors Degree','non, hendrerit id, ante. Nunc mauris sapien, cursus'),
  (35,4,19,8000,'Masters Degree','eget, dictum placerat, augue. Sed molestie.'),
  (36,8,5,22000,'Bachelors Degree','risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed'),
  (37,10,15,41000,'High School','risus odio, auctor vitae, aliquet nec, imperdiet'),
  (38,2,16,13000,'High School','faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare.'),
  (39,8,5,40000,'Associates Degree','est mauris, rhoncus id, mollis'),
  (40,2,2,17000,'Bachelors Degree','diam vel arcu. Curabitur ut odio vel est');
INSERT INTO [vacancy] (id,companyId,positionId,salary,educationTypeRequired,vacancyDescription)
VALUES
  (41,10,10,36000,'Bachelors Degree','elementum, lorem ut aliquam iaculis,'),
  (42,3,5,39000,'High School','molestie tortor nibh sit amet orci. Ut sagittis lobortis'),
  (43,6,4,47000,'High School','scelerisque mollis. Phasellus libero mauris,'),
  (44,9,15,34000,'High School','In condimentum. Donec at arcu. Vestibulum ante ipsum primis'),
  (45,7,10,39000,'Masters Degree','dapibus id, blandit at, nisi. Cum sociis'),
  (46,5,11,32000,'Associates Degree','libero est, congue a, aliquet vel, vulputate eu, odio.'),
  (47,8,15,24000,'High School','dui, in sodales elit erat vitae'),
  (48,5,19,20000,'Masters Degree','sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed'),
  (49,6,7,48000,'High School','ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer'),
  (50,1,17,32000,'Bachelors Degree','fringilla euismod enim. Etiam gravida molestie');
  
SET IDENTITY_INSERT vacancy ON