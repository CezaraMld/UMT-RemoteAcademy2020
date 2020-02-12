CREATE TABLE [Students](
	[StudentID] uniqueidentifier NOT NULL,
	[FirstName] nvarchar(50) NOT NULL,
	[LastName] nvarchar(50) NOT NULL,
	[Address] nvarchar(150) NOT NULL,
	[City] nvarchar(50) NOT NULL,
	[Country] nvarchar(50) NOT NULL,
	[PhoneNumber] nvarchar(50),
	[EmailAddress] nvarchar(50),
	[BirthDay] date,
CONSTRAINT [PK_Students] PRIMARY KEY ([StudentID]));

CREATE TABLE [Departments](
	[DepartmentID] uniqueidentifier NOT NULL,
	[DepartmentName] nvarchar(50) NOT NULL,
	[Description] nvarchar(150) NOT NULL,
CONSTRAINT [PK_Departments] PRIMARY KEY ([DepartmentID]));

CREATE TABLE [Courses](
	[CourseID] uniqueidentifier NOT NULL,
	[CourseName] nvarchar(50) NOT NULL,
	[DepartmentID] uniqueidentifier,
	[Credits] nvarchar(150) NOT NULL,
CONSTRAINT [PK_Courses] PRIMARY KEY ([CourseID]),
CONSTRAINT [FK_Courses_Department] FOREIGN KEY ([DepartmentID])
    REFERENCES [Departments]([DepartmentID]));

CREATE TABLE [Enrollments](
	[StudentID] uniqueidentifier NOT NULL,
	[CourseID] uniqueidentifier NOT NULL,
CONSTRAINT [PK_Enrollments] PRIMARY KEY ([StudentID], [CourseID]),
CONSTRAINT [FK_Enrollments_Students] FOREIGN KEY ([StudentID])
    REFERENCES [Students]([StudentID]),
CONSTRAINT [FK_Enrollments_Courses] FOREIGN KEY ([CourseID])
    REFERENCES [Courses]([CourseID]));

INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('561FC9B6-74AB-D604-337F-3D83F8504E01','Upton','Flynn','5661 Turpis. St.','Fallais','Guinea','063-511-7196','felis.ullamcorper.viverra@Suspendissenonleo.edu','1998-05-10T13:23:38-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('E5C24E7A-A819-1E62-E37C-0700402A1B8C','Whilemina','Meyers','P.O. Box 361, 8723 At, Street','Lathuy','Heard Island and Mcdonald Islands','028-662-0992','Proin@dictumeu.co.uk','1997-07-18T01:47:18-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('CEBF5C68-9DAB-3590-3E11-E01DFEE0CAB7','Hillary','Holder','510-559 Ante St.','Buggenhout','Togo','090-708-9278','cursus.diam.at@nunc.org','1993-10-22T15:58:03-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('6DEB815A-5F4B-D7A5-8571-168AB1DA8E67','Ursa','Sheppard','P.O. Box 246, 1889 Ante Avenue','Oudenaken','Brunei','017-489-4232','ante.Maecenas@nulla.com','1993-09-01T21:47:13-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('7FF26F6F-CA03-FD5B-993C-CB0F2FD6F9B8','Nehru','Mann','1780 Et Ave','Teno','Montserrat','005-130-2666','odio.semper.cursus@Nullamenim.edu','1999-07-17T23:40:20-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('5588EDAA-8B4A-21EC-6E09-AC366C60BE28','Mona','Myers','P.O. Box 971, 3649 Quisque Avenue','Kitscoty','Costa Rica','030-970-2687','varius.ultrices.mauris@Vestibulumuteros.org','1997-07-20T16:22:17-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('07C379FB-E86E-672E-2AEF-A51D972B23DD','Kaseem','Branch','3300 Nunc Ave','Meerle','Australia','025-579-7720','amet.diam.eu@mattis.net','1996-07-13T07:39:13-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('6744521B-D152-D609-73CB-BC6FDABD82E8','Debra','Hurst','Ap #998-8345 Lacus. Street','L�vis','Niue','051-547-7629','mollis.nec.cursus@iaculisaliquet.net','1997-06-10T16:59:38-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('A1685337-572A-497B-0D73-1384E453D3B4','Diana','Curtis','P.O. Box 440, 6993 Lobortis Av.','Delhi','Greece','015-828-6928','est.congue@etipsumcursus.edu','1999-12-16T13:22:17-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('978211D7-76EB-B5E4-C14B-CFDD78BF0AF2','Tallulah','Benson','Ap #504-1023 Amet Av.','Würzburg','Congo (Brazzaville)','003-359-1756','mi@Duis.net','1997-08-04T16:37:48-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('1BE0C12A-3373-39BC-3B0A-CC02396D03CB','Kasper','Lowery','5728 Faucibus St.','Savannah','Viet Nam','007-070-1094','ipsum.Phasellus.vitae@Suspendisse.org','1995-05-29T15:11:58-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('73A64F90-0611-E35E-BB36-A1950794B2B1','Sloane','Cohen','1281 Neque St.','Welland','Tonga','097-257-5660','sociis.natoque@a.edu','1999-05-09T03:17:13-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('ADDDFE06-A8BE-A3D5-F2DD-5164F385C21C','Laith','Mercer','Ap #577-1431 Purus, Rd.','Olinda','Ethiopia','078-997-2541','nulla.Integer@vulputateeu.edu','1995-12-08T21:21:23-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('D6877042-4394-7D9C-0790-1F4BC4A88722','Tad','Montgomery','557-9116 Maecenas Rd.','Béthune','Syria','016-075-6405','molestie@nec.com','1993-01-04T04:16:43-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('FE1B7EFD-571A-DEAA-4513-DB413054A827','Eugenia','Rosa','Ap #333-1249 Fusce Rd.','Enschede','Åland Islands','029-391-4266','lectus.pede@aliquet.edu','1997-06-19T03:34:36-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('054B4BCE-0E01-38B2-054C-E2A6074A2393','Phyllis','Townsend','5561 Sem. Av.','Laguna Blanca','Turkmenistan','092-778-0444','luctus.lobortis.Class@nondui.org','1995-08-26T05:16:11-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('502C58C1-572C-4191-B8C6-1FE0592BECB8','Phillip','Holmes','Ap #546-6465 Eu, St.','Provo','Thailand','084-097-7256','nec@gravida.co.uk','1993-08-08T03:45:41-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('DAC965EB-893D-94D3-136F-73EC397EF190','Aspen','Carney','7788 Quisque Ave','Atlanta','Antigua and Barbuda','019-845-7553','Cum@sem.co.uk','1997-03-16T10:46:47-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('9A18C663-B8AC-4781-7478-45FD04AD5166','Lucy','Wise','4923 Libero Rd.','Meldert','Oman','016-394-9813','vel.sapien@uteros.net','1993-08-07T07:37:24-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('8DB13A21-F92A-792D-DDBF-239DF7E52085','Dale','Cline','Ap #779-2254 Id, Avenue','Topeka','Suriname','071-027-3094','ac@semvitae.com','1999-09-24T06:26:48-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('ECEA6306-0EB0-DBD3-FB26-BE14DF3F6BDB','Halee','Hoover','3654 Nonummy Avenue','Malgesso','Bonaire, Sint Eustatius and Saba','003-663-3330','magna.a.neque@loremipsum.org','1998-10-22T11:30:39-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('286BFFAF-ECD3-BF82-9142-D06F2CA2735B','Dante','Hale','8919 Mauris St.','Ferlach','Korea, South','090-267-7170','lectus.Nullam@aauctornon.co.uk','1995-11-20T06:37:37-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('DCB778B8-423D-94E2-0E8A-DDF13A049060','Eleanor','Elliott','P.O. Box 949, 8161 Tempus Ave','Blind River','Equatorial Guinea','089-298-7959','malesuada.ut.sem@libero.com','1993-06-23T00:45:01-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('C0B61866-E341-441A-CA7D-7CACA9EDAA36','Rylee','Meyer','691-9698 Nullam St.','Birmingham','Mauritius','080-539-9470','a@ridiculusmus.co.uk','1993-12-19T09:51:15-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('C75DDDE3-1E9B-59C7-320E-FBFB9B8CD56F','Dalton','Jarvis','7270 Enim. Road','Baie-Comeau','Gibraltar','036-193-5301','convallis.ante.lectus@risusDonec.net','1995-11-30T21:22:55-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F22F1530-A563-30E9-F475-32E75369D4A0','Athena','Hebert','P.O. Box 668, 9893 Vitae Road','Kansas City','Cameroon','061-475-5721','non@malesuadaid.org','1995-08-01T00:29:51-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('EAF840AF-18F4-CADB-C6FC-EC884271650C','Zephania','Hines','Ap #648-1877 Dolor. Street','Thorold','Angola','045-516-8351','metus.sit@nisl.com','1999-03-31T09:18:26-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('6574F732-AFBF-E498-A2E9-44ED6545E05D','Alana','Jimenez','564-5660 Est St.','Jodoigne','Estonia','057-850-1046','vitae.nibh.Donec@nibhvulputatemauris.ca','1994-02-13T19:40:09-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('D281AA81-A605-D384-704F-8A373B4DDA74','Damian','Boyd','656-5758 Rutrum Road','Bajardo','Palau','019-053-1106','Class.aptent@Sedpharetra.com','1997-09-04T13:51:57-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('1DBE8E35-2889-1547-B5FA-CB73743C2705','Levi','Bell','949 Posuere Avenue','Slijpe','Nauru','055-823-3072','arcu@purusaccumsaninterdum.edu','1995-02-10T10:24:45-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('1C3BB277-70D7-1033-0FAD-B173B0DBAFFB','Brooke','Watkins','853-1828 Montes, Rd.','Tulsa','Macedonia','081-206-9554','pharetra.ut@risusDonec.edu','1999-12-24T23:38:16-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('2F227852-70AE-5900-6E90-AAA587126AB3','Hannah','Walton','Ap #470-8730 Nam Road','Inveraray','Pitcairn Islands','068-565-2012','Integer.aliquam.adipiscing@neccursusa.net','1998-08-30T00:16:07-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('CEBDD74F-6C4E-A9D8-9160-93012AF8D3CA','Owen','House','Ap #650-4059 In Ave','Rinconada','Cameroon','021-761-5521','velit.in@temporbibendumDonec.edu','1995-05-15T15:48:26-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('2E109928-7C6C-B075-80ED-802BE949CBED','Lester','Cooper','Ap #935-5199 Blandit. St.','Lochranza','Côte D''Ivoire (Ivory Coast)','082-261-6784','dolor@lectusantedictum.edu','1997-03-08T20:57:22-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('2B2F830B-B32F-ED2A-C2B8-8FD3A5B9A014','Joseph','Gould','8642 Urna. Av.','Clearwater Municipal District','Malaysia','048-066-8587','at.iaculis@temporeratneque.org','1997-04-04T04:26:41-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('579C1FC1-1670-187E-C438-0C1599CAEDFE','Yael','Sandoval','8060 Mi St.','Chiaromonte','Botswana','042-484-5964','Proin@vitaesodales.org','1996-12-04T14:53:32-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('89C6D870-2C07-DE4D-4082-1141DCBF7243','Xena','Wells','Ap #404-4241 Nam Ave','Roio del Sangro','Venezuela','067-109-9272','lobortis@ante.org','1995-06-26T07:59:03-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('DA434A0D-BDB8-73C4-3E61-7FD487F3E968','Buckminster','Vargas','138-4728 Tempor Ave','Atlanta','Belize','025-673-2862','eu.arcu@Maurisvestibulumneque.ca','1994-12-28T00:34:37-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('BEB3F169-2625-545D-CCA9-A39CAAF58907','Iona','Pruitt','P.O. Box 656, 1591 Vivamus Avenue','Bear','Belize','029-583-8058','mi@montesnasceturridiculus.co.uk','1998-05-01T21:06:02-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('BA4E4E84-BB0B-753E-7153-7900AD8EFCB9','Melinda','Lott','357-9019 Nibh Avenue','Wijnegem','Jordan','095-877-4841','neque@fermentum.ca','1999-12-23T10:52:16-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('1F0BD9AB-E171-43FF-E9B3-2C8076408B8B','Belle','Garcia','Ap #968-9550 Metus Avenue','Zaria','Ethiopia','002-907-6485','Ut.tincidunt.vehicula@lacinia.edu','1993-12-07T03:09:46-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('CB19A6B0-FCBE-A2A1-8F97-8522746E2578','Kyla','Burks','P.O. Box 874, 2758 Donec St.','Presles','Monaco','046-243-8917','tellus.Aenean@arcuAliquam.co.uk','1996-01-09T03:14:25-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('00C7F69F-EAC4-3D0B-7F1E-3EA36EA2D0DE','Carly','Fitzgerald','855-1430 Nunc Ave','Farrukhabad-cum-Fatehgarh','Albania','034-215-6201','pede.Nunc@interdum.edu','1994-05-23T16:13:19-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('5F6960E3-7D3E-B829-308A-14BB09C19F5A','Stephanie','Russo','Ap #391-1373 Egestas Ave','Saint-Lô','Brazil','053-327-3733','lobortis.Class.aptent@feugiat.ca','1994-08-05T20:54:55-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('7B611782-B94A-181B-C8A8-03810636217B','Miranda','Goodman','408-4956 Consequat St.','LiŽge','Latvia','023-446-7831','Maecenas@eget.org','1993-07-29T04:36:50-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F91C01CE-35AD-5A72-2CF1-2955C19B1FFF','Lance','Edwards','Ap #819-3694 Congue, Av.','Kaneohe','Sri Lanka','000-832-0503','dolor.Fusce@lorem.net','1997-03-24T21:12:37-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('0DB29770-2122-57A2-6DBF-6317BD218659','Anthony','Bowen','Ap #519-3753 Netus Rd.','Reana del Rojale','Libya','071-650-6962','Nullam.lobortis@pede.org','1997-03-01T23:08:36-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('9D66F563-815C-4AD3-9752-B0A0C2A76DE1','Edan','May','Ap #799-7493 Penatibus Road','Pontypridd','Haiti','066-660-3102','lobortis.mauris.Suspendisse@nequetellus.net','1997-01-21T10:16:16-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('AC58F525-4702-A47F-3899-7AFE6FA5FDC0','Wanda','Scott','Ap #422-6123 At, Avenue','Newport','French Guiana','025-748-9556','mollis.lectus@lectusNullamsuscipit.com','1994-08-01T13:05:53-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('FBFBC4D1-30B3-CBAD-A2EB-5E7CEBB41402','Caryn','Good','1123 Ultricies Road','Płock','Guyana','022-120-6733','nec.malesuada@arcu.org','1998-09-05T19:56:00-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('0E540C9C-3B83-344B-20C7-D6F96943C866','Chava','Singleton','P.O. Box 509, 5443 Quam Rd.','Milford Haven','Philippines','022-979-0672','aliquet.nec.imperdiet@auctornonfeugiat.edu','1994-09-06T02:17:27-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('A2855E59-C5A3-D395-7224-D34F883D8E71','Pearl','Trujillo','263-7998 Euismod Rd.','Tenali','Andorra','043-418-6426','vehicula.aliquet.libero@et.co.uk','1994-05-08T03:46:29-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('A2B621E3-8D27-07D2-C102-9363CD9FB8A0','Amethyst','Guerrero','Ap #651-5272 Pulvinar St.','Minitonas','El Salvador','032-299-4087','posuere.cubilia@variusNamporttitor.edu','1996-09-05T18:36:01-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('ED5B1A25-8976-AB7D-4490-180B2DAF172A','Inga','Marks','233-5823 Primis Ave','Hubli','Tokelau','018-289-2329','et@molestie.net','1994-12-11T06:28:05-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('3D507A4F-8BA2-856B-FDA4-884C60260957','Lisandra','Newton','Ap #424-349 Blandit Av.','Cawdor','Uruguay','003-089-6905','pellentesque.tellus.sem@eu.com','1999-12-07T22:19:40-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('ADC908E7-E26B-7414-C3AD-6898E6BF9EE2','Yvette','Powell','9535 At, St.','Kircudbright','Germany','065-321-8403','a.arcu.Sed@imperdiet.edu','1996-11-06T10:05:30-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('22C54C4C-937D-1061-D2F3-23D432054409','Kimberley','Clay','Ap #710-4890 Sapien. Avenue','Heestert','Chad','026-000-6047','erat.volutpat.Nulla@sapiengravidanon.co.uk','1995-02-10T11:18:37-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('89E49143-7B68-7B79-E82F-71E6853B16C7','Isabella','Landry','P.O. Box 367, 2878 Ac Ave','Milestone','New Caledonia','066-265-8632','Duis.volutpat.nunc@elitpharetra.com','1998-03-02T10:02:15-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('69447718-6CA8-8A2E-B6AD-2018C05FA67D','Charlotte','Wallace','666-4473 Cubilia Rd.','Rutten','South Sudan','025-652-7147','Sed@a.co.uk','1999-10-27T21:20:35-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('3609BC25-F9A9-0038-4886-DD8F1ED7AEF5','Ishmael','Salazar','1174 Nibh Av.','Saint-Pierre','Maldives','039-495-5946','aliquam.eu@auctorodioa.co.uk','1994-03-14T08:48:05-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('353E116F-3D66-C91A-7F69-9350261B440D','Kane','Parsons','577-9635 Nec Av.','Weißenfels','Saint Lucia','094-454-2876','sit.amet@SedmolestieSed.org','1996-05-31T15:02:01-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('3A7C5B16-CF2C-A55D-2147-F435EF5CDD0B','Elijah','Koch','P.O. Box 236, 1309 Eu Rd.','Bolton','Belarus','061-483-5201','dictum@vulputate.co.uk','1994-08-07T01:05:13-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('E8ED9F77-3962-57AB-FD5D-4418665961F6','Shoshana','Carney','P.O. Box 923, 7830 Natoque Rd.','Juneau','Estonia','004-731-7850','nibh.vulputate.mauris@nunc.edu','1996-08-11T20:56:51-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('464220A9-66ED-769C-05BA-EC20A0CF6E4B','Melodie','Sears','Ap #436-8142 Cursus Road','San Giovanni Lipioni','Liechtenstein','014-587-0752','enim.sit.amet@erosturpis.org','1993-09-28T14:11:28-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('D622593B-EBCA-ED16-AFAB-2B1C639664BC','Damian','Webb','Ap #448-3270 Diam Rd.','Fontanafredda','Anguilla','087-041-1033','risus.Duis.a@etnetus.com','1995-10-24T13:15:44-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('4AFB8CD8-E3F7-1343-A95A-5DDCFA14B7F4','Eugenia','Atkinson','9579 Curabitur Road','Plancenoit','Reunion','014-582-1462','ac@lobortis.co.uk','1997-09-20T15:40:12-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('4D731457-9C2F-C2B1-8FFB-18FB91F253E7','Cody','Lowe','757-3852 Integer Avenue','Piracicaba','Uganda','094-032-4847','rhoncus.Donec@arcu.edu','1999-01-01T09:06:29-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('5ADC35CF-1AB1-CB2D-8759-CC337F294BE9','Luke','Bell','Ap #456-5867 Eros Rd.','Ajmer','Antarctica','038-279-1773','pulvinar.arcu@atsem.com','1996-04-18T04:25:19-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('CDC76357-7430-076A-ED56-4DF83BB845DF','Ciaran','Maxwell','Ap #890-3748 Netus Rd.','Delta','Paraguay','039-233-5547','sed.libero@aliquet.com','1996-11-17T15:51:47-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('693E7255-00A8-71DA-67CD-FBAB1537D5DF','Akeem','Merritt','P.O. Box 572, 9381 Suspendisse Avenue','Pittsburgh','Qatar','003-855-5605','vulputate@velitduisemper.com','1997-11-11T08:06:43-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('62984B65-907F-BF97-9FB3-366FBACA30D9','Sybil','Barnett','P.O. Box 675, 5813 Fermentum Avenue','Llandovery','Senegal','021-464-1031','consectetuer.adipiscing.elit@convallis.co.uk','1996-06-05T19:30:07-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('5759E5BF-BA5E-C4F8-C86D-F006DC91AEC3','Hasad','Hooper','4751 Cursus Avenue','Cromer','Morocco','015-903-7963','Cum.sociis@erat.edu','1998-04-13T11:37:33-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('D33776EB-ED00-F65C-67A9-99BC05AADB7E','Carolyn','Francis','Ap #509-9147 Ac Avenue','Rastatt','Bermuda','065-544-2837','pede.Cras@Namac.net','1998-12-10T17:02:05-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('CA9346A7-1E86-5CAF-1058-009730A64DE5','Declan','Orr','8835 Nulla Rd.','Shawinigan','Ghana','035-847-0010','Phasellus.ornare@orci.ca','1995-10-29T05:58:37-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('55156677-6D9E-86DB-E557-C3BDF5EF5CC5','Jasper','Hall','Ap #645-4661 Aliquam St.','Castor','Costa Rica','059-934-5319','erat.volutpat@adui.org','1997-01-26T23:40:23-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('87927D7C-43BC-52EE-6C69-76B876EFFDF3','Iliana','Molina','Ap #513-8797 Sed, St.','Copiapó','Latvia','075-809-4243','Morbi@euaugue.edu','1995-03-05T10:18:36-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F8CE5CEC-1D28-CBF3-4427-BE9C6B4C157F','Sasha','Orr','Ap #741-1170 Leo. Av.','Sint-Niklaas','Swaziland','086-000-2493','lacus.Quisque.purus@sitamet.com','1996-09-21T16:07:51-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('0B6E930E-F7D0-478E-A04F-5CCA5C7FCC97','Barbara','Goodwin','519-9091 Auctor. Avenue','Freising','India','051-874-2627','a@est.ca','1997-06-16T13:53:43-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('03CAC9CF-A496-2D2F-E715-EF2CA46A35C6','Sade','Harrison','Ap #470-6318 Id, Av.','Pali','Zimbabwe','037-967-9778','hymenaeos.Mauris@nuncacmattis.ca','1997-04-24T11:09:33-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('936E176A-7FA4-3F06-9322-C124F52F57F7','Peter','Berger','406-3793 Feugiat Avenue','Alma','Zimbabwe','066-947-8182','enim@idante.edu','1999-01-04T12:19:04-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('4E2712F2-F5B5-16CC-91E1-9391CCBE51AD','Zenaida','Castillo','P.O. Box 590, 3780 Arcu Av.','Castelbianco','Saint Martin','039-162-2007','tincidunt.orci.quis@arcueu.ca','1993-01-17T18:27:49-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('49A32EDA-29F4-6937-DBC6-42AD11396DDC','Xantha','Rose','P.O. Box 940, 9236 Nec Av.','Philadelphia','Portugal','012-181-2472','nec@Aliquamtincidunt.org','1995-03-27T17:58:29-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('A70F87DC-3C80-B126-E78A-2E804C1BFC71','Chava','Thompson','P.O. Box 505, 4054 Nulla Ave','Tourcoing','Tuvalu','027-667-0646','elementum@lectus.org','1996-09-08T04:57:37-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('B2CEA293-3F64-F802-F0C2-4059B67F2FD7','Honorato','Nicholson','P.O. Box 532, 5521 Donec Street','Talagante','Comoros','006-526-8182','Curabitur.massa.Vestibulum@rutrumurnanec.org','1994-01-02T21:52:14-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('9540E138-9096-299F-EC6B-F53F0C1D93AA','Madeline','Rios','953-6123 Penatibus Street','Swansea','Macedonia','043-875-2835','sed.tortor@Nuncullamcorpervelit.org','1999-01-21T11:14:54-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('A131B44A-C93E-D0D0-7D7A-3C0E8687E395','Britanni','Huffman','Ap #531-2741 Aenean Ave','Denver','American Samoa','075-126-5799','arcu.Vestibulum@nonummyipsumnon.org','1997-08-27T04:17:02-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('DECD8CC0-B10C-C741-302C-E8B651A78816','Sigourney','Fleming','P.O. Box 326, 7786 Facilisis. St.','Aliano','Bouvet Island','008-516-2408','amet@diam.com','1995-04-20T07:10:02-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('691A1083-EA8E-527B-6A92-EBBA232AEA30','Odysseus','Ruiz','Ap #422-4520 Duis St.','Vaux-lez-Rosieres','Chile','032-486-8417','velit@diamProindolor.com','1997-01-02T07:07:13-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('B954F233-1A5F-6B1C-FCD2-7DBEF14190D0','Destiny','Thomas','503-9136 Vel, St.','Baracaldo','French Polynesia','090-488-1427','viverra@vitaedolorDonec.co.uk','1995-06-13T07:00:19-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('EC33846B-85B8-9427-786E-9C1435BF7A4F','Cedric','French','Ap #991-6494 Eu St.','Westrem','Lithuania','067-980-4643','nibh@Praesent.edu','1993-03-03T23:10:49-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('05DC4757-C2C5-FDEB-78FF-7FBB356BCAEC','Zenaida','Dunlap','644-7580 Mauris Rd.','Palanzano','Curaçao','023-425-9017','felis.orci@ligulaconsectetuer.co.uk','1993-08-23T12:38:45-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('8C3247BA-744B-B22D-3F74-052AB990E14D','Christine','Simmons','997-9479 Ultricies Street','Monte Santa Maria Tiberina','Switzerland','018-147-3777','elit.a@nonummyFuscefermentum.edu','1995-10-18T10:32:54-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('BC3D4212-68BA-2037-AE84-C2F83A827C39','Nina','Kim','P.O. Box 208, 9423 Amet, Avenue','Roxburgh','Lithuania','067-771-2093','purus.in.molestie@Sednunc.com','1999-11-07T23:19:30-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F1DF267A-10A5-AFA6-9C5D-0EBD8382EB38','Laura','Munoz','9145 Adipiscing. Avenue','West Jordan','Mayotte','016-462-8822','nunc.ullamcorper@interdumenimnon.org','1995-09-22T20:56:35-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F3F94A50-623F-7D08-D119-AFD660F57C5D','Raven','Bond','4128 Laoreet, St.','Pessac','Togo','006-257-8210','pellentesque@viverraMaecenas.ca','1993-12-04T13:28:10-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('3457D994-9ACF-6907-EB01-95C9DB8A1661','Calista','Calderon','Ap #383-2857 Non, Rd.','Sant''Egidio alla Vibrata','Wallis and Futuna','053-671-9570','nulla.In@nonquam.com','1993-05-26T02:50:18-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('032EA1C0-D117-83CA-A542-FF8774AEF991','Mercedes','Guy','P.O. Box 858, 9617 Lacinia. Av.','Coldstream','Argentina','001-923-5238','Cum.sociis.natoque@eratvitaerisus.net','1995-11-27T07:26:50-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('F7D82AFA-4507-3DA2-72A6-B7FB4D59119F','Jared','Garner','4204 Metus. Avenue','Merrickville-Wolford','Turks and Caicos Islands','049-542-9982','odio.auctor.vitae@nibhdolor.co.uk','1994-07-29T12:27:10-07:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('D1D24C47-1627-A045-F12B-9410A7456F88','Dalton','Bright','P.O. Box 444, 1914 Augue Avenue','Renfrew','Russian Federation','061-400-4343','accumsan.sed.facilisis@Duisacarcu.net','1997-12-30T21:17:41-08:00');
INSERT INTO Students([StudentID],[FirstName],[LastName],[Address],[City],[Country],[PhoneNumber],[EmailAddress],[BirthDay]) VALUES('E77A8D29-CBEF-0FD9-6797-780923DB84F9','Malik','Petty','P.O. Box 639, 7324 Vivamus Road','Northumberland','Turkey','078-741-4944','adipiscing.Mauris@odioNaminterdum.com','1994-11-20T13:40:29-08:00');

INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('FB5297E5-C754-E8AD-2A61-B4FE918DB967','Asset Management','eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('03D89659-0BF0-CA7C-174E-C899F4D0987C','Asset Management','imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('93CD0078-DAEF-2501-C57B-555BB3C64E0E','Customer Relations','elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('971C1BEE-F445-2229-57EA-8306CEE6E96D','Customer Relations','Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus,');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('1AB4F8C3-3F8D-2ABF-10E7-B24BE5F781AA','Media Relations','lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('B857C53D-ED0C-1665-BB4C-75C98E5392AA','Customer Service','semper egestas, urna justo faucibus lectus, a sollicitudin orci sem');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('8272BB97-3F75-6F41-C250-5442F82A89E5','Advertising','Cras sed leo. Cras vehicula aliquet libero. Integer in magna.');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('92253C67-3FE9-B5A3-1815-06370B145B62','Asset Management','sem semper erat, in consectetuer ipsum nunc id enim. Curabitur');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('9A0DBEAA-4AF4-F792-A393-561C13AA57C6','Payroll','eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum');
INSERT INTO Departments([DepartmentID],[DepartmentName],[Description]) VALUES('9E5060AB-E64C-4E3A-DC3F-5C5B627FB6C2','Accounting','neque. In ornare sagittis felis. Donec tempor, est ac mattis');

INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'0856b808-c2e4-b5f3-7af6-035e096b238a', N'Yahoo', N'8272bb97-3f75-6f41-c250-5442f82a89e5', N'10')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'9d038cdf-e2fe-8f32-1fd4-04f6d9e8891f', N'Apple Systems', N'8272bb97-3f75-6f41-c250-5442f82a89e5', N'5')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'c555c9d3-e9f4-dd84-44f4-09a2ac8a9ca8', N'Microsoft', N'9e5060ab-e64c-4e3a-dc3f-5c5b627fb6c2', N'1')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'60dbc27c-06a2-bd1a-f54c-0b19d17f7f72', N'Borland', NULL, N'8')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'6d8cd40b-5dad-c0d0-043b-15148c13e2d5', N'Apple Systems', NULL, N'2')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'590932d2-0f9a-9709-332a-15d71940a32b', N'Altavista', N'8272bb97-3f75-6f41-c250-5442f82a89e5', N'9')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'dea13367-df50-e0fd-b266-269d5c565c31', N'Apple Systems', N'b857c53d-ed0c-1665-bb4c-75c98e5392aa', N'4')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'42a8391e-d529-715f-8331-516d24f26a6b', N'Macromedia', NULL, N'1')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'16ef36df-a9b0-c646-55b5-525341c14721', N'Lycos', N'8272bb97-3f75-6f41-c250-5442f82a89e5', N'4')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'bda40de5-4919-d4e0-5ac1-7aa0deb97fd4', N'Lavasoft', NULL, N'2')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'22e2ae6c-4c5b-d3f9-ba07-7def6cd28a20', N'Apple Systems', NULL, N'6')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'181838cb-1b51-b35c-cb91-7ea3028d4f10', N'Lavasoft', NULL, N'8')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'6d962558-934b-71d4-4619-84e8ed340128', N'Yahoo', N'9e5060ab-e64c-4e3a-dc3f-5c5b627fb6c2', N'4')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'85ae96b7-dcc7-a720-e55b-90e20b602df9', N'Finale', NULL, N'7')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'a38d82d9-f6b1-a4d2-79fb-9bf903354345', N'Sibelius', NULL, N'10')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'6ca4f7b6-1b12-824e-aa55-cadfac51db5c', N'Lavasoft', N'b857c53d-ed0c-1665-bb4c-75c98e5392aa', N'1')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'c9a9cdab-8340-b681-a559-cd003763fcb1', N'Adobe', N'b857c53d-ed0c-1665-bb4c-75c98e5392aa', N'1')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'f3d7d8d9-37b5-204c-0d94-d9a3645b4295', N'Lavasoft', NULL, N'5')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'ebe832d9-5af8-6138-9a91-edfb07e557d5', N'Apple Systems', NULL, N'10')
INSERT [dbo].[Courses] ([CourseID], [CourseName], [DepartmentID], [Credits]) VALUES (N'103fe138-2560-43d6-0162-ff99ad465a94', N'Cakewalk', N'b857c53d-ed0c-1665-bb4c-75c98e5392aa', N'2')

INSERT INTO Departments([DepartmentID], [DepartmentName], [Description])
VALUES (NEWID(), 'Marketing', 'This is our marketing department.')

UPDATE Departments
SET [Description] = 'Changed description'
WHERE DepartmentID = '27454977-A798-4A39-8103-990EE4F386CC'

DELETE
FROM Departments 
WHERE DepartmentID = '27454977-A798-4A39-8103-990EE4F386CC'

SELECT * 
FROM Departments
WHERE DepartmentID = '27454977-A798-4A39-8103-990EE4F386CC'


SELECT StudentID
FROM Students

SELECT CourseID
FROM Courses

INSERT INTO Enrollments(StudentID, CourseID) VALUES ('CA9346A7-1E86-5CAF-1058-009730A64DE5', '0856B808-C2E4-B5F3-7AF6-035E096B238A')
INSERT INTO Enrollments(StudentID, CourseID) VALUES ('7B611782-B94A-181B-C8A8-03810636217B', '0856B808-C2E4-B5F3-7AF6-035E096B238A')
INSERT INTO Enrollments(StudentID, CourseID) VALUES ('8C3247BA-744B-B22D-3F74-052AB990E14D', '0856B808-C2E4-B5F3-7AF6-035E096B238A')
INSERT INTO Enrollments(StudentID, CourseID) VALUES ('E5C24E7A-A819-1E62-E37C-0700402A1B8C', '0856B808-C2E4-B5F3-7AF6-035E096B238A')
INSERT INTO Enrollments(StudentID, CourseID) VALUES ('CA9346A7-1E86-5CAF-1058-009730A64DE5', '9D038CDF-E2FE-8F32-1FD4-04F6D9E8891F')
INSERT INTO Enrollments(StudentID, CourseID) VALUES ('579C1FC1-1670-187E-C438-0C1599CAEDFE', 'C555C9D3-E9F4-DD84-44F4-09A2AC8A9CA8')

SELECT s.FirstName,
	   s.LastName,
	   c.CourseName,
	   d.DepartmentName
FROM Students s
	INNER JOIN Enrollments e ON s.StudentID = e.StudentID
	INNER JOIN Courses c ON c.CourseID = e.CourseID
	INNER JOIN Departments d ON d.DepartmentID = c.DepartmentID
WHERE c.CourseName = 'Yahoo'

