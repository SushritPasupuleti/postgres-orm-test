create table ctos_items (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v1(),
	item_name VARCHAR(50),
    item_count VARCHAR(50)
);

create table ctos (
	id UUID PRIMARY KEY DEFAULT uuid_generate_v1(),
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	dob DATE,
	income VARCHAR(50),
	details VARCHAR(50),
	skills VARCHAR(50),
    item_id UUID REFERENCES ctos_items (id)
);

insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Boyd', 'Strickler', 'bstrickler0@yolasite.com', 'Male', '7/18/1976', '$1.03', '[{}]', 'EOL');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Roselin', 'Eastham', 'reastham1@myspace.com', 'Female', '2/28/1999', '$2.14', '[{},{},{},{}]', 'Microcontrollers');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Galvin', 'Kiloh', 'gkiloh2@earthlink.net', 'Male', '8/14/2006', '$5.34', '[{},{},{}]', 'Art Exhibitions');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Lanie', 'Whichelow', 'lwhichelow3@adobe.com', 'Male', '11/18/2003', '$4.04', '[{},{},{},{}]', 'Literature');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Jasper', 'Blay', 'jblay4@myspace.com', 'Male', '6/28/2010', '$5.96', '[{},{}]', 'NYSE');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Connor', 'Cordelette', 'ccordelette5@illinois.edu', 'Male', '3/26/1994', '$0.51', '[{},{},{}]', 'Organizational Leadership');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Garry', 'Groocock', 'ggroocock6@furl.net', 'Male', '7/23/2015', '$8.37', '[{},{}]', 'VPN');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Stanleigh', 'O''Nions', 'sonions7@techcrunch.com', 'Male', '11/17/1972', '$0.85', '[{},{},{}]', 'BCA Protein Assay');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Taffy', 'Ramsay', 'tramsay8@hubpages.com', 'Female', '6/16/2014', '$0.90', '[{},{},{}]', 'XPath');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Raquela', 'Georgins', 'rgeorgins9@latimes.com', 'Female', '2/27/1971', '$8.19', '[{},{},{},{}]', 'Httpd');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Dion', 'Lumby', 'dlumbya@dailymail.co.uk', 'Female', '9/17/2019', '$0.39', '[{}]', 'Old English');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Maighdiln', 'Chastang', 'mchastangb@ucsd.edu', 'Female', '8/31/1979', '$8.29', '[{},{},{}]', 'Vlookup');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Michelina', 'Nayer', 'mnayerc@ow.ly', 'Female', '6/8/2003', '$9.95', '[{},{},{},{},{}]', 'Job Analysis');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Jeramie', 'Simeonov', 'jsimeonovd@aol.com', 'Male', '10/26/1978', '$1.38', '[{},{}]', 'Credit Cards');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Kincaid', 'Fidler', 'kfidlere@bizjournals.com', 'Male', '11/21/1982', '$7.84', '[{},{},{},{},{}]', 'Observation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Kimbell', 'Tabbernor', 'ktabbernorf@wix.com', 'Male', '12/11/2008', '$5.77', '[{}]', 'Power Generation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Heriberto', 'Spillman', 'hspillmang@deviantart.com', 'Male', '2/11/2014', '$4.21', '[{},{},{}]', 'DSL');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Durand', 'Ventam', 'dventamh@aboutads.info', 'Male', '4/24/1971', '$4.39', '[{},{},{},{}]', 'TVPaint');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Mab', 'Ech', 'mechi@vinaora.com', 'Female', '2/28/2014', '$8.04', '[{},{},{},{}]', 'Commercial Aviation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Curr', 'Pidduck', 'cpidduckj@cmu.edu', 'Male', '4/21/2018', '$4.89', '[{},{},{},{}]', 'Broadband');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Whittaker', 'Ciccarelli', 'wciccarellik@skype.com', 'Male', '4/6/2012', '$3.41', '[{}]', 'Feature Films');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Morgan', 'Abbis', 'mabbisl@baidu.com', 'Male', '8/28/2004', '$1.48', '[{}]', 'Db4o');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Virgie', 'Bendix', 'vbendixm@xrea.com', 'Male', '1/16/1977', '$4.27', '[{}]', 'Working Abroad');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Leoine', 'Hooban', 'lhoobann@tripod.com', 'Female', '2/28/1991', '$3.82', '[{},{}]', 'Furniture');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Aprilette', 'Bortoluzzi', 'abortoluzzio@storify.com', 'Female', '10/7/1979', '$5.90', '[{},{},{},{}]', 'UTRAN');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Corabelle', 'Cunde', 'ccundep@princeton.edu', 'Female', '2/5/1989', '$9.64', '[{},{},{}]', 'Drilling');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Lion', 'Watting', 'lwattingq@bloglovin.com', 'Male', '5/12/2007', '$5.09', '[{},{},{},{}]', 'FFT');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Cherish', 'Santer', 'csanterr@creativecommons.org', 'Female', '4/8/2000', '$8.92', '[{},{},{}]', 'Hyper-V');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Caryl', 'Cosans', 'ccosanss@about.com', 'Female', '11/1/1976', '$1.59', '[{},{},{}]', 'Unreal Engine 3');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Cicely', 'Collyns', 'ccollynst@jigsy.com', 'Female', '2/18/2018', '$4.26', '[{},{},{}]', 'VPLS');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Zorana', 'Sparling', 'zsparlingu@kickstarter.com', 'Female', '4/12/1999', '$8.68', '[{}]', 'CRM');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Allen', 'Spear', 'aspearv@patch.com', 'Male', '1/3/1977', '$6.29', '[{},{},{},{},{}]', 'HPLC');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Orsa', 'Blunn', 'oblunnw@list-manage.com', 'Female', '10/21/1990', '$7.57', '[{},{},{},{},{}]', 'LMDS');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Gelya', 'Waddam', 'gwaddamx@marketwatch.com', 'Female', '10/14/2005', '$9.59', '[{},{},{},{},{}]', 'Start-ups');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Morse', 'Di Claudio', 'mdiclaudioy@1und1.de', 'Male', '4/18/2005', '$8.49', '[{},{},{},{}]', 'AES');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Michele', 'Girogetti', 'mgirogettiz@redcross.org', 'Female', '3/6/1979', '$0.11', '[{}]', 'SRX');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Oriana', 'Chrestien', 'ochrestien10@angelfire.com', 'Female', '12/5/2019', '$9.77', '[{},{},{},{}]', 'Nutritional Counseling');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Windham', 'McTeague', 'wmcteague11@nytimes.com', 'Male', '10/29/1989', '$3.48', '[{},{},{}]', 'Kaspersky Antivirus');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Innis', 'Hebble', 'ihebble12@ed.gov', 'Male', '4/27/1984', '$4.83', '[{},{}]', 'zSeries');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Vittorio', 'Eagger', 'veagger13@abc.net.au', 'Male', '4/17/1999', '$5.69', '[{},{},{},{}]', 'Layout');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Estell', 'Creagh', 'ecreagh14@youku.com', 'Female', '11/5/1975', '$4.81', '[{},{},{},{}]', 'Events Coordination');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Jermaine', 'Bourcq', 'jbourcq15@cbslocal.com', 'Female', '10/1/1999', '$1.77', '[{},{},{}]', 'Consumer Electronics');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ingar', 'Danne', 'idanne16@exblog.jp', 'Male', '8/4/2009', '$0.99', '[{}]', 'UML Tools');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Arman', 'Hammerson', 'ahammerson17@psu.edu', 'Male', '10/9/2011', '$5.21', '[{},{},{},{},{}]', 'LDO');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Gwenore', 'Rassmann', 'grassmann18@symantec.com', 'Female', '7/11/1975', '$8.82', '[{}]', 'RTLS');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Sondra', 'Glencross', 'sglencross19@exblog.jp', 'Female', '3/15/2008', '$9.46', '[{},{},{}]', 'QRM');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Mari', 'Kemwal', 'mkemwal1a@cnet.com', 'Female', '3/16/1993', '$0.41', '[{},{}]', 'Family Law');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Vladimir', 'Heister', 'vheister1b@time.com', 'Male', '7/6/2012', '$2.58', '[{},{}]', 'Vyatta');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Tabitha', 'Verchambre', 'tverchambre1c@multiply.com', 'Female', '9/16/2000', '$1.54', '[{}]', 'Type 1 Diabetes');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Reggis', 'Iannelli', 'riannelli1d@purevolume.com', 'Male', '1/15/2003', '$3.79', '[{},{}]', 'Workshop Facilitation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Lari', 'Alvarado', 'lalvarado1e@hud.gov', 'Female', '8/15/1979', '$1.78', '[{},{}]', 'PTW');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Grantley', 'Minthorpe', 'gminthorpe1f@people.com.cn', 'Male', '7/22/1974', '$0.77', '[{}]', 'LPR');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Rhodie', 'Hane', 'rhane1g@domainmarket.com', 'Female', '10/14/1993', '$2.82', '[{},{},{}]', 'PFTrack');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Philippine', 'Cullin', 'pcullin1h@devhub.com', 'Female', '2/24/2009', '$4.34', '[{},{},{}]', 'Volunteer Recruiting');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Christabella', 'Fearnyough', 'cfearnyough1i@wisc.edu', 'Female', '8/12/1981', '$4.16', '[{}]', 'ISM');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Florella', 'Algeo', 'falgeo1j@cam.ac.uk', 'Female', '3/6/1989', '$1.43', '[{},{},{},{},{}]', 'Visual Communication');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Arabela', 'Haddy', 'ahaddy1k@pagesperso-orange.fr', 'Female', '12/9/2013', '$9.25', '[{},{},{}]', 'Distribution Center Operations');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ruperto', 'McBeith', 'rmcbeith1l@princeton.edu', 'Male', '3/19/1999', '$8.54', '[{},{},{},{}]', 'MBS');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Annabel', 'Caldera', 'acaldera1m@1688.com', 'Female', '8/8/2010', '$1.18', '[{}]', 'DCF Valuation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Riordan', 'Hirsthouse', 'rhirsthouse1n@bbb.org', 'Male', '8/20/1993', '$0.92', '[{},{},{},{}]', 'Lucene');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ogden', 'Shovelbottom', 'oshovelbottom1o@smh.com.au', 'Male', '7/26/2019', '$8.68', '[{},{}]', 'Japanese Language Proficiency Test');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Goldina', 'Billany', 'gbillany1p@spotify.com', 'Female', '2/16/2020', '$6.26', '[{},{},{},{},{}]', 'Finance');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Frederigo', 'Jacobowitz', 'fjacobowitz1q@apache.org', 'Male', '2/20/1986', '$5.97', '[{},{},{}]', 'Database Marketing');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Amalee', 'Eyeington', 'aeyeington1r@linkedin.com', 'Female', '1/13/1971', '$4.72', '[{},{},{},{}]', 'XBRL');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Lyell', 'Mayou', 'lmayou1s@china.com.cn', 'Male', '8/22/2019', '$7.99', '[{}]', 'Fund Administration');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Kaitlyn', 'Mawman', 'kmawman1t@cdbaby.com', 'Female', '1/10/1998', '$6.25', '[{},{},{},{},{}]', 'Art History');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Mayer', 'MacCleod', 'mmaccleod1u@wikia.com', 'Male', '2/2/2003', '$3.51', '[{}]', 'MRV');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Sonny', 'Smallbone', 'ssmallbone1v@g.co', 'Male', '5/4/1971', '$0.23', '[{}]', 'OGRE');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Krystyna', 'Grocock', 'kgrocock1w@example.com', 'Female', '3/19/2010', '$4.67', '[{},{},{},{}]', 'Oracle Applications');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Felizio', 'Alexander', 'falexander1x@utexas.edu', 'Male', '5/6/1990', '$1.46', '[{},{}]', 'PC Games');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Eldridge', 'Pechan', 'epechan1y@nyu.edu', 'Male', '7/2/1986', '$4.92', '[{}]', 'MBAL');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Kyle', 'Jeste', 'kjeste1z@tumblr.com', 'Male', '2/20/1972', '$5.51', '[{},{}]', 'Illustration');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Efrem', 'Kidman', 'ekidman20@columbia.edu', 'Male', '3/19/1977', '$3.45', '[{},{}]', 'Credit Cards');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Dori', 'Bachman', 'dbachman21@quantcast.com', 'Female', '2/8/1983', '$6.38', '[{},{}]', 'LPN');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Thaddus', 'Di Bartolommeo', 'tdibartolommeo22@baidu.com', 'Male', '11/23/1982', '$0.23', '[{},{}]', 'ISO/TS 16949');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Netty', 'Anear', 'nanear23@gov.uk', 'Female', '10/21/2012', '$2.98', '[{},{},{},{}]', 'Sculpture');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Wallace', 'Carl', 'wcarl24@seesaa.net', 'Male', '8/6/1975', '$2.75', '[{},{},{},{},{}]', 'SNMP');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Linnell', 'Caze', 'lcaze25@behance.net', 'Female', '8/22/2010', '$1.57', '[{},{}]', 'Copy Editing');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Cirilo', 'Edelmann', 'cedelmann26@woothemes.com', 'Male', '2/25/1996', '$7.91', '[{},{}]', 'ESL');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Twyla', 'Mc Caghan', 'tmccaghan27@forbes.com', 'Female', '10/29/2002', '$3.67', '[{},{},{}]', 'NRP Instruction');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Manda', 'Liccardi', 'mliccardi28@photobucket.com', 'Female', '4/3/1985', '$0.41', '[{},{},{},{},{}]', 'OmniPage');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Dicky', 'McGeady', 'dmcgeady29@tumblr.com', 'Male', '10/16/2006', '$3.16', '[{},{},{}]', 'PMO');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Paul', 'Blodgett', 'pblodgett2a@hibu.com', 'Male', '2/2/2008', '$5.69', '[{}]', 'Green Belt');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Lavina', 'Crimp', 'lcrimp2b@theguardian.com', 'Female', '3/9/1991', '$0.91', '[{},{},{}]', 'Handmade Jewelry');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Darryl', 'Orrobin', 'dorrobin2c@ovh.net', 'Male', '1/9/1997', '$6.47', '[{},{},{},{}]', 'CMC Regulatory Affairs');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Johny', 'Cuppleditch', 'jcuppleditch2d@wisc.edu', 'Male', '1/21/1971', '$3.72', '[{}]', 'MKS Integrity');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Val', 'Ledbury', 'vledbury2e@about.me', 'Female', '4/21/2009', '$3.09', '[{},{},{}]', 'Music Industry');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Derrek', 'Sprey', 'dsprey2f@gmpg.org', 'Male', '3/15/2018', '$4.80', '[{}]', 'Entertainment');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Faulkner', 'Sloey', 'fsloey2g@answers.com', 'Male', '4/2/1984', '$6.50', '[{},{},{}]', 'Commercial Litigation');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Reyna', 'Teasey', 'rteasey2h@stanford.edu', 'Female', '3/27/2020', '$7.15', '[{},{},{},{}]', 'DSM-IV');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Morly', 'Ashcroft', 'mashcroft2i@nba.com', 'Male', '7/25/1980', '$9.49', '[{},{},{},{},{}]', 'HTK');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ximenes', 'Horney', 'xhorney2j@wsj.com', 'Male', '10/22/1985', '$0.02', '[{},{},{},{}]', 'CQ');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Deane', 'Scamaden', 'dscamaden2k@gmpg.org', 'Female', '9/22/2017', '$6.04', '[{},{},{},{},{}]', 'Aquatic Ecology');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Barnaby', 'Rumbellow', 'brumbellow2l@issuu.com', 'Male', '4/8/1973', '$6.37', '[{}]', 'Project Bidding');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Trula', 'Spare', 'tspare2m@google.co.uk', 'Female', '1/27/2014', '$0.07', '[{},{}]', 'Hotel Booking');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Zorana', 'Garn', 'zgarn2n@behance.net', 'Female', '8/30/2014', '$5.23', '[{},{}]', 'Cybercrime');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Rich', 'Bruhke', 'rbruhke2o@amazonaws.com', 'Male', '1/9/1972', '$1.77', '[{},{},{}]', 'MCDBA');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ailina', 'Madden', 'amadden2p@delicious.com', 'Female', '3/11/2015', '$9.76', '[{},{}]', 'Gynecology');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Rachele', 'Balasin', 'rbalasin2q@wikia.com', 'Female', '12/1/1985', '$6.64', '[{},{},{},{}]', 'PDS Frameworks');
insert into ctos (first_name, last_name, email, gender, dob, income, details, skills) values ('Ann', 'Fordyce', 'afordyce2r@blogs.com', 'Female', '5/10/2000', '$6.02', '[{},{},{},{}]', 'Shell Scripting');