USE [EmploymentCenter]
GO

select * from personalData

SET IDENTITY_INSERT personalData ON
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (1,'Sims','Fitzgerald','Carlos','+380956078557','ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam'),
  (2,'Price','Dillon','Kasimir','+380631613492','Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem,'),
  (3,'Fischer','Colin','Ferdinand','+380632765829','In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas'),
  (4,'Elliott','Jena','Acton','+380636168776','dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus'),
  (5,'Finley','Mariko','Wayne','+380958254966','eu tempor erat neque non quam. Pellentesque habitant morbi tristique'),
  (6,'Guzman','Mira','Silas','+380635479254','non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,'),
  (7,'Cherry','Alfreda','Nero','+380635874444','a nunc. In at pede. Cras vulputate velit eu sem.'),
  (8,'Chapman','Bruno','Fritz','+380632025672','Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus.'),
  (9,'Norman','Troy','Buckminster','+380954611720','est tempor bibendum. Donec felis orci, adipiscing non, luctus sit'),
  (10,'Alvarez','Zena','Lionel','+380631491636','Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (11,'Mcintosh','Shaine','Palmer','+380633448301','augue. Sed molestie. Sed id risus quis diam luctus lobortis.'),
  (12,'Hunt','Leandra','Carter','+380633042370','rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,'),
  (13,'Hodges','Herman','George','+380956876757','urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac'),
  (14,'Keller','Brennan','Dalton','+380636647353','pede et risus. Quisque libero lacus, varius et, euismod et,'),
  (15,'Adkins','Hayden','Keaton','+380631148575','at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque'),
  (16,'Wiley','Caleb','Tucker','+380957215006','posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse'),
  (17,'Rojas','Derek','Abraham','+380953976866','lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum'),
  (18,'Camacho','Cyrus','Odysseus','+380951856719','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices'),
  (19,'Berry','Catherine','Felix','+380951058621','vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.'),
  (20,'Dunn','Guy','Xanthus','+380954675953','lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (21,'Kent','Moana','Camden','+380633778771','Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed'),
  (22,'Lowery','Gavin','Carlos','+380954587261','orci, consectetuer euismod est arcu ac orci. Ut semper pretium'),
  (23,'Harris','Odette','Dante','+380632614951','semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque'),
  (24,'Houston','Erasmus','Reece','+380954540368','Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor'),
  (25,'Benjamin','Finn','Igor','+380639458711','ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,'),
  (26,'Cruz','Rylee','Jonah','+380958278584','non quam. Pellentesque habitant morbi tristique senectus et netus et'),
  (27,'Compton','Chava','Stephen','+380950818722','ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et,'),
  (28,'Vang','Lael','Samson','+380634757827','ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc'),
  (29,'Lang','Phillip','Jermaine','+380956986537','Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat.'),
  (30,'Obrien','Jenna','Thor','+380952934264','lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (31,'Guthrie','Brady','Malik','+380954854702','lectus. Cum sociis natoque penatibus et magnis dis parturient montes,'),
  (32,'Dodson','Deirdre','Jared','+380951573562','vestibulum, neque sed dictum eleifend, nunc risus varius orci, in'),
  (33,'Blanchard','Baker','Xenos','+380635581047','velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas.'),
  (34,'Hayden','Lyle','Nero','+380959938202','Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.'),
  (35,'Day','Isaac','Igor','+380957581288','nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam'),
  (36,'Logan','Fulton','Donovan','+380634576200','quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam'),
  (37,'Espinoza','Scarlett','Alvin','+380631543666','ipsum porta elit, a feugiat tellus lorem eu metus. In'),
  (38,'Wong','Adara','Darius','+380635622810','urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus'),
  (39,'Mcclure','Otto','Ross','+380953899754','nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante'),
  (40,'Wolf','Nadine','Jonas','+380634237426','id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (41,'Mcmillan','India','Merritt','+380638112918','tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris.'),
  (42,'Blair','Scott','Julian','+380634587849','aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae'),
  (43,'Marsh','Claire','Todd','+380638612325','Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus'),
  (44,'Hamilton','Kyra','Tarik','+380957371193','nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque'),
  (45,'Graham','Demetrius','Brock','+380630553694','cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut'),
  (46,'Jarvis','Alexa','Ciaran','+380633492161','eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus'),
  (47,'King','Whitney','Jonas','+380954736041','non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat'),
  (48,'Pugh','Sylvia','Abdul','+380950668892','leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,'),
  (49,'Marks','Nasim','Vincent','+380633616312','mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin'),
  (50,'Lamb','Quyn','Gil','+380957808161','magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (51,'Estrada','Ishmael','Vaughan','+380953276786','massa non ante bibendum ullamcorper. Duis cursus, diam at pretium'),
  (52,'Witt','Ivan','Fulton','+380636868325','Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet'),
  (53,'Cox','Yoshi','Leroy','+380636341765','arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida'),
  (54,'Martinez','Joshua','Alvin','+380952905651','pretium neque. Morbi quis urna. Nunc quis arcu vel quam'),
  (55,'Lester','Ezekiel','Stephen','+380637697813','Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,'),
  (56,'Perry','Nyssa','Alexander','+380631513264','nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia'),
  (57,'Vaughan','Vivian','Emery','+380953187108','Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris'),
  (58,'Kane','Kessie','Upton','+380633515245','ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo'),
  (59,'Wilder','Katell','Vladimir','+380630744282','Duis sit amet diam eu dolor egestas rhoncus. Proin nisl'),
  (60,'Merrill','Kadeem','Ezra','+380634752681','dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero.');
INSERT INTO [personalData] (id,Surname,Name,Patronym,phoneNumber,workExperience)
VALUES
  (61,'Wooten','Nichole','Chadwick','+380951153514','porta elit, a feugiat tellus lorem eu metus. In lorem.'),
  (62,'Schroeder','Lane','Drew','+380957512578','neque. Sed eget lacus. Mauris non dui nec urna suscipit'),
  (63,'Gilbert','Rogan','Dane','+380957183032','tristique senectus et netus et malesuada fames ac turpis egestas.'),
  (64,'Fletcher','Linda','Dale','+380958295517','lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet'),
  (65,'Whitfield','Vernon','Hilel','+380635438826','mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed'),
  (66,'Richmond','Ursula','Luke','+380955118188','enim diam vel arcu. Curabitur ut odio vel est tempor'),
  (67,'Bailey','Christen','Allen','+380952328417','non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum'),
  (68,'Sullivan','Bethany','Tyrone','+380957397577','nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.'),
  (69,'Hurley','Hilel','Uriah','+380954517192','dui quis accumsan convallis, ante lectus convallis est, vitae sodales'),
  (70,'Browning','Isadora','Duncan','+380951868677','nunc risus varius orci, in consequat enim diam vel arcu.');
SET IDENTITY_INSERT personalData OFF