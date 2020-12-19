create table ctos_items (
	id BIGSERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	dob DATE,
	income VARCHAR(50),
	details VARCHAR(50),
	skills VARCHAR(50)
);

create table ctos (
	id BIGSERIAL PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	dob DATE,
	income VARCHAR(50),
	details VARCHAR(50),
	skills VARCHAR(50),
    item_id BIGINT REFERENCES ctos_items (id)
);

insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (1, 'Aliza', 'Delagnes', 'adelagnes0@guardian.co.uk', 'Female', '2/25/1998', '$1.41', '[{},{},{},{}]', 'IEEE 802.11');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (2, 'Mariele', 'Cromblehome', 'mcromblehome1@purevolume.com', 'Female', '6/18/2007', '$8.29', '[{}]', 'Hyperion');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (3, 'Maureene', 'Eaves', 'meaves2@goodreads.com', 'Female', '3/25/1983', '$0.77', '[{},{},{}]', 'Process Improvement');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (4, 'Davidde', 'Measom', 'dmeasom3@comcast.net', 'Male', '10/17/2004', '$0.70', '[{},{}]', 'Pneumatic Tools');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (5, 'Florry', 'Dicks', 'fdicks4@cnbc.com', 'Female', '7/3/1989', '$4.58', '[{},{},{},{}]', 'HCP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (6, 'Clarence', 'Werlock', 'cwerlock5@skyrock.com', 'Male', '3/18/2014', '$3.47', '[{},{},{}]', 'Fluid Dynamics');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (7, 'Darryl', 'Majury', 'dmajury6@t.co', 'Female', '4/30/2009', '$7.86', '[{}]', 'Healthcare Industry');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (8, 'Minna', 'Buffham', 'mbuffham7@narod.ru', 'Female', '1/3/1993', '$8.28', '[{},{}]', 'UE');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (9, 'Mandi', 'Benardeau', 'mbenardeau8@google.it', 'Female', '1/26/1993', '$0.51', '[{},{}]', 'Overseeing Projects');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (10, 'Ermin', 'MacNalley', 'emacnalley9@auda.org.au', 'Male', '10/5/1988', '$5.70', '[{},{},{}]', 'PMIS');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (11, 'Josiah', 'Eldin', 'jeldina@yandex.ru', 'Male', '1/23/2007', '$0.56', '[{}]', 'Loan Origination');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (12, 'Wynne', 'Packe', 'wpackeb@who.int', 'Female', '6/3/1991', '$9.17', '[{},{},{},{},{}]', 'Foreign Affairs');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (13, 'Seth', 'Blanchet', 'sblanchetc@51.la', 'Male', '9/21/1978', '$9.04', '[{},{},{},{},{}]', 'FX Swaps');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (14, 'Lacy', 'Tenwick', 'ltenwickd@ox.ac.uk', 'Female', '12/28/1977', '$4.97', '[{}]', 'MS Excel Pivot Tables');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (15, 'Erinn', 'Bengall', 'ebengalle@netvibes.com', 'Female', '10/8/1976', '$1.54', '[{},{},{},{}]', 'Theology');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (16, 'Nick', 'Ferrers', 'nferrersf@i2i.jp', 'Male', '1/28/1994', '$8.02', '[{},{},{},{},{}]', 'Team Building');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (17, 'Cherri', 'Bleas', 'cbleasg@com.com', 'Female', '6/7/2018', '$7.17', '[{},{},{}]', 'IRS');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (18, 'Phelia', 'Viccars', 'pviccarsh@prnewswire.com', 'Female', '10/3/2018', '$6.73', '[{},{},{},{},{}]', 'Notary Public');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (19, 'Dyane', 'Woolway', 'dwoolwayi@sciencedaily.com', 'Female', '3/6/2016', '$3.03', '[{}]', 'HNW');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (20, 'Glenden', 'Coiley', 'gcoileyj@nih.gov', 'Male', '10/26/1993', '$9.69', '[{},{},{}]', 'Cisco VoIP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (21, 'Zerk', 'Fumagallo', 'zfumagallok@howstuffworks.com', 'Male', '5/16/2001', '$8.71', '[{},{},{},{}]', 'Disability Insurance');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (22, 'Grier', 'Pearcy', 'gpearcyl@microsoft.com', 'Female', '8/3/1985', '$1.28', '[{}]', 'LabVIEW');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (23, 'Maressa', 'Macewan', 'mmacewanm@mit.edu', 'Female', '5/25/2012', '$1.55', '[{},{}]', 'RS/6000');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (24, 'Flory', 'Elnaugh', 'felnaughn@usda.gov', 'Female', '4/23/2001', '$7.94', '[{},{},{},{},{}]', 'Personal Development');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (25, 'Linn', 'McCourtie', 'lmccourtieo@prlog.org', 'Female', '9/22/2019', '$8.20', '[{},{},{},{},{}]', 'Property Management Systems');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (26, 'Terrijo', 'Ghelardoni', 'tghelardonip@sitemeter.com', 'Female', '1/14/1975', '$0.05', '[{},{},{},{}]', 'FDR');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (27, 'Idaline', 'Bartlett', 'ibartlettq@flavors.me', 'Female', '11/22/1999', '$9.53', '[{}]', 'VxWorks');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (28, 'Richardo', 'Chapelle', 'rchapeller@auda.org.au', 'Male', '8/5/1974', '$8.46', '[{},{},{},{}]', 'GMS');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (29, 'Derrick', 'Franzewitch', 'dfranzewitchs@stanford.edu', 'Male', '5/8/1995', '$7.22', '[{},{},{},{}]', 'Energy');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (30, 'Roxanna', 'Callaghan', 'rcallaghant@ebay.co.uk', 'Female', '3/3/1974', '$1.06', '[{},{}]', 'Multiplex PCR');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (31, 'Giffy', 'MacCallister', 'gmaccallisteru@quantcast.com', 'Male', '1/15/1994', '$7.39', '[{},{},{},{},{}]', 'Trading Systems');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (32, 'Vannie', 'Marty', 'vmartyv@nba.com', 'Female', '3/11/2007', '$1.14', '[{},{},{},{},{}]', 'Alcohol Awareness');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (33, 'Vinny', 'Foxcroft', 'vfoxcroftw@unesco.org', 'Female', '6/2/1988', '$3.92', '[{}]', 'SLES');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (34, 'Hinze', 'Vinden', 'hvindenx@blogspot.com', 'Male', '5/8/1999', '$5.04', '[{},{},{},{}]', 'Project Oversight');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (35, 'Darcy', 'Brickhill', 'dbrickhilly@mozilla.org', 'Male', '5/7/2011', '$6.60', '[{},{}]', 'Flights');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (36, 'Cirilo', 'Shubotham', 'cshubothamz@wunderground.com', 'Male', '9/9/2004', '$2.71', '[{},{},{},{}]', 'Essbase');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (37, 'Joanna', 'Alessandone', 'jalessandone10@sakura.ne.jp', 'Female', '4/30/1992', '$1.48', '[{},{},{}]', 'VxFS');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (38, 'Morena', 'Summons', 'msummons11@geocities.com', 'Female', '7/9/1971', '$2.38', '[{},{},{}]', 'HTTPWatch');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (39, 'Milka', 'Iacovides', 'miacovides12@netvibes.com', 'Female', '1/1/1985', '$4.79', '[{},{},{}]', 'Nightlife');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (40, 'Kylila', 'Robberts', 'krobberts13@hexun.com', 'Female', '6/7/1984', '$5.23', '[{},{}]', 'CMOS');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (41, 'Tulley', 'Wiskar', 'twiskar14@icio.us', 'Male', '4/29/2013', '$5.82', '[{},{},{},{},{}]', 'Oil on Canvas');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (42, 'Myrna', 'Finkle', 'mfinkle15@cbsnews.com', 'Female', '2/7/1998', '$3.22', '[{}]', 'Program Evaluation');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (43, 'Mae', 'Wraxall', 'mwraxall16@cbslocal.com', 'Female', '3/5/1973', '$2.85', '[{},{},{},{}]', 'cGMP practices');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (44, 'Johann', 'Schutte', 'jschutte17@virginia.edu', 'Male', '8/24/1986', '$9.26', '[{},{}]', 'Structural Dynamics');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (45, 'Benedicto', 'Coning', 'bconing18@ed.gov', 'Male', '7/30/2003', '$3.99', '[{}]', 'SNMP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (46, 'Calhoun', 'Pashen', 'cpashen19@economist.com', 'Male', '6/28/2002', '$2.09', '[{},{}]', 'DBs');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (47, 'Emmalynne', 'Carwithan', 'ecarwithan1a@eventbrite.com', 'Female', '7/24/1990', '$0.83', '[{},{}]', 'Snowboarding');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (48, 'Demetria', 'Arias', 'darias1b@tamu.edu', 'Female', '8/22/2009', '$5.32', '[{},{},{},{}]', 'Smartstream TLM');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (49, 'Friederike', 'Alexsandrowicz', 'falexsandrowicz1c@nps.gov', 'Female', '1/14/2014', '$0.17', '[{}]', 'FTO');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (50, 'Cchaddie', 'Waddams', 'cwaddams1d@sphinn.com', 'Male', '5/3/1995', '$0.62', '[{},{},{}]', 'Power Systems');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (51, 'Frederich', 'Bleeze', 'fbleeze1e@plala.or.jp', 'Male', '2/5/2002', '$3.56', '[{},{},{},{}]', 'Government Relations');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (52, 'Tait', 'Kupisz', 'tkupisz1f@nifty.com', 'Male', '12/2/2008', '$6.32', '[{}]', 'Swim Instruction');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (53, 'Erinna', 'Aldrick', 'ealdrick1g@csmonitor.com', 'Female', '3/24/2010', '$8.77', '[{},{},{},{}]', 'Outlook Express');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (54, 'Skipton', 'Portlock', 'sportlock1h@bluehost.com', 'Male', '4/4/1993', '$5.66', '[{},{},{}]', 'Radio');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (55, 'Rickard', 'Duffitt', 'rduffitt1i@acquirethisname.com', 'Male', '7/5/2020', '$9.32', '[{},{},{},{}]', 'Xing');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (56, 'Delores', 'Gorcke', 'dgorcke1j@mail.ru', 'Female', '3/20/1992', '$9.93', '[{},{}]', 'PDH');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (57, 'Pattin', 'Ledur', 'pledur1k@exblog.jp', 'Male', '7/28/2005', '$9.36', '[{}]', 'French');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (58, 'Ronalda', 'Dugood', 'rdugood1l@alexa.com', 'Female', '4/3/1980', '$4.59', '[{},{},{},{}]', 'SOA BPEL');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (59, 'Marys', 'Skydall', 'mskydall1m@yale.edu', 'Female', '6/10/1999', '$8.43', '[{},{}]', 'Oracle XE');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (60, 'Nye', 'Whorton', 'nwhorton1n@apache.org', 'Male', '6/6/2005', '$7.02', '[{},{},{},{},{}]', 'Rugby');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (61, 'Zackariah', 'Janczak', 'zjanczak1o@arstechnica.com', 'Male', '1/24/2004', '$6.84', '[{},{},{}]', 'OAT');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (62, 'Alverta', 'Enocksson', 'aenocksson1p@umn.edu', 'Female', '2/1/2000', '$1.72', '[{},{}]', 'American History');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (63, 'Colly', 'Bielfeld', 'cbielfeld1q@opensource.org', 'Female', '9/19/1990', '$5.42', '[{}]', 'Robotics');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (64, 'Annalee', 'Salman', 'asalman1r@hatena.ne.jp', 'Female', '11/29/1998', '$0.28', '[{},{},{},{},{}]', 'VC-1');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (65, 'Antonin', 'Davoren', 'adavoren1s@list-manage.com', 'Male', '8/13/2000', '$7.61', '[{},{}]', 'WGA');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (66, 'Den', 'Dodge', 'ddodge1t@histats.com', 'Male', '6/23/2010', '$5.24', '[{}]', 'Invoicing');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (67, 'Rayner', 'Kirkam', 'rkirkam1u@deliciousdays.com', 'Male', '12/7/2006', '$5.98', '[{},{},{},{}]', 'SIP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (68, 'Cacilia', 'Beaglehole', 'cbeaglehole1v@aol.com', 'Female', '7/30/1975', '$6.51', '[{}]', 'IT Project &amp; Program Management');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (69, 'Alwin', 'Cottier', 'acottier1w@youtu.be', 'Male', '10/22/1980', '$9.10', '[{}]', 'Utilities');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (70, 'Liza', 'Pyburn', 'lpyburn1x@princeton.edu', 'Female', '7/28/1974', '$5.82', '[{},{}]', 'Orthopedics');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (71, 'Putnem', 'Goldspink', 'pgoldspink1y@pagesperso-orange.fr', 'Male', '2/18/2009', '$0.63', '[{},{},{}]', 'Scrum');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (72, 'Tarrah', 'Robley', 'trobley1z@free.fr', 'Female', '3/11/2017', '$1.05', '[{},{},{},{},{}]', 'Getting to Yes');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (73, 'Korey', 'Lansdowne', 'klansdowne20@biblegateway.com', 'Male', '11/15/2005', '$1.02', '[{},{},{},{},{}]', 'NMT');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (74, 'Gawen', 'Butler', 'gbutler21@e-recht24.de', 'Male', '12/24/1985', '$7.06', '[{},{},{}]', 'UI Automation');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (75, 'Bliss', 'Skyrme', 'bskyrme22@gmpg.org', 'Female', '1/29/1972', '$2.81', '[{},{},{},{},{}]', 'Hyperion EPM');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (76, 'Elsinore', 'Slingsby', 'eslingsby23@youtu.be', 'Female', '12/20/2004', '$0.06', '[{}]', 'JIRA');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (77, 'Dene', 'Easdon', 'deasdon24@hhs.gov', 'Male', '5/17/1976', '$6.14', '[{},{},{},{},{}]', 'Kitchen &amp; Bath Design');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (78, 'Lewes', 'Dewicke', 'ldewicke25@miitbeian.gov.cn', 'Male', '4/15/1999', '$4.00', '[{}]', 'Emergency Services');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (79, 'Meta', 'Macro', 'mmacro26@bloglines.com', 'Female', '8/12/2016', '$5.70', '[{},{},{}]', 'Multi-Unit Management');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (80, 'Adella', 'Utley', 'autley27@de.vu', 'Female', '9/6/2006', '$3.31', '[{}]', 'Slackware');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (81, 'Golda', 'Beincken', 'gbeincken28@plala.or.jp', 'Female', '10/7/1982', '$7.37', '[{}]', 'EEO Reporting');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (82, 'Ronald', 'Ashfold', 'rashfold29@naver.com', 'Male', '10/16/2012', '$5.45', '[{},{},{},{}]', 'Xerces');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (83, 'Serena', 'Madden', 'smadden2a@sitemeter.com', 'Female', '9/4/1988', '$0.29', '[{},{},{}]', 'RTP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (84, 'Bax', 'O''Carney', 'bocarney2b@mozilla.org', 'Male', '4/24/2012', '$3.94', '[{}]', 'Woodworking');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (85, 'Toddie', 'Pickerin', 'tpickerin2c@behance.net', 'Male', '2/5/1985', '$2.20', '[{},{},{},{}]', 'SAP Implementation');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (86, 'Hew', 'Yeabsley', 'hyeabsley2d@wufoo.com', 'Male', '10/3/1978', '$7.20', '[{},{},{},{},{}]', 'Omgeo Oasys');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (87, 'Galven', 'Tulk', 'gtulk2e@t-online.de', 'Male', '10/21/1972', '$9.61', '[{},{},{},{}]', 'Axys');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (88, 'Kevin', 'Hurl', 'khurl2f@unblog.fr', 'Male', '10/12/2016', '$9.95', '[{}]', 'Aquatics');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (89, 'Urbanus', 'Yetts', 'uyetts2g@instagram.com', 'Male', '2/7/1997', '$5.94', '[{},{},{},{}]', 'Allergic Rhinitis');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (90, 'Thorstein', 'Harring', 'tharring2h@wired.com', 'Male', '1/13/1996', '$2.64', '[{},{}]', 'TL9000');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (91, 'Nola', 'Warman', 'nwarman2i@booking.com', 'Female', '7/11/2011', '$7.00', '[{},{},{}]', 'Environmental Issues');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (92, 'Ashton', 'Edmands', 'aedmands2j@nbcnews.com', 'Male', '1/29/1991', '$2.12', '[{},{}]', 'English');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (93, 'Fabian', 'Trevethan', 'ftrevethan2k@xinhuanet.com', 'Male', '4/21/2012', '$1.72', '[{},{},{}]', 'Whiplash');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (94, 'Homer', 'Dowe', 'hdowe2l@technorati.com', 'Male', '9/2/2018', '$6.60', '[{}]', 'Sketching');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (95, 'Daron', 'Kernell', 'dkernell2m@sciencedaily.com', 'Female', '7/8/2016', '$1.20', '[{},{}]', 'Oracle OLAP');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (96, 'Brandy', 'Brogden', 'bbrogden2n@fastcompany.com', 'Male', '1/18/1998', '$1.48', '[{},{},{},{}]', 'Skin Care Products');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (97, 'Valentino', 'Nucator', 'vnucator2o@java.com', 'Male', '9/9/2010', '$0.36', '[{},{},{},{}]', 'DBWorks');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (98, 'Benedicta', 'Wrefford', 'bwrefford2p@princeton.edu', 'Female', '3/20/2007', '$4.35', '[{},{}]', 'Overhaul');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (99, 'Paco', 'Mankor', 'pmankor2q@google.com', 'Male', '3/7/1979', '$8.18', '[{},{},{},{},{}]', 'BS25999');
insert into ctos (id, first_name, last_name, email, gender, dob, income, details, skills) values (100, 'Petey', 'Clopton', 'pclopton2r@cdc.gov', 'Male', '7/18/2018', '$8.06', '[{},{},{},{},{}]', 'Parts');