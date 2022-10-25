CREATE TABLE homelessness.homelessness (
  year INT NOT NULL,
  period VARCHAR(45) NOT NULL,
  location_id VARCHAR(45) NOT NULL,
  location_name VARCHAR(100) NOT NULL,
  total_init INT NULL,
  total_oprd INT NULL,
  threatened INT NULL,
  homeless_relief_duty INT NULL,
  PRIMARY KEY (year, period, location_id)) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE homelessness.locations (
  location_id VARCHAR(45) NOT NULL,
  location_name VARCHAR(100) NOT NULL,
  location_population INT NULL,
  PRIMARY KEY (location_id)) ENGINE=InnoDB CHARSET=utf8;

-- MIGRATION: LOCATIONS

INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E12000007", "London", 8982000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000001", "Hartlepool", 92300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000002", "Middlesbrough", 143900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000003", "Redcar and Cleveland", 136500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000004", "Stockton-on-Tees", 196600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000005", "Darlington", 107800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000006", "Halton", 128200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000007", "Warrington", 210900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000008", "Blackburn with Darwen", 154800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000009", "Blackpool", 141100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000010", "Kingston upon Hull, City of", 267100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000011", "East Riding of Yorkshire", 342200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000012", "North East Lincolnshire", 156900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000013", "North Lincolnshire", 169700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000014", "York", 202800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000015", "Derby", 261400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000016", "Leicester", 368600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000017", "Rutland", 41000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000018", "Nottingham", 323700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000019", "Herefordshire, County of", 187100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000020", "Telford and Wrekin", 185600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000021", "Stoke-on-Trent", 258400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000022", "Bath and North East Somerset", 193400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000023", "Bristol, City of", 472400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000024", "North Somerset", 216700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000025", "South Gloucestershire", 290400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000026", "Plymouth", 264700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000027", "Torbay", 139300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000030", "Swindon", 233400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000031", "Peterborough", 215700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000032", "Luton", 225300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000033", "Southend-on-Sea", 180700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000034", "Thurrock", 176000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000035", "Medway", 279800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000036", "Bracknell Forest", 124600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000037", "West Berkshire", 161400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000038", "Reading", 174200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000039", "Slough", 158500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000040", "Windsor and Maidenhead", 153500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000041", "Wokingham", 177500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000042", "Milton Keynes", 287000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000043", "Brighton and Hove", 277200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000044", "Portsmouth", 208100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000045", "Southampton", 249000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000046", "Isle of Wight", 140400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000047", "County Durham", 522100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000049", "Cheshire East", 398800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000050", "Cheshire West and Chester", 357200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000051", "Shropshire", 323600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000052", "Cornwall", 570300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000053", "Isles of Scilly", 2100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000054", "Wiltshire", 510400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000055", "Bedford", 185300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000056", "Central Bedfordshire", 294200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000057", "Northumberland", 320600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000058", "Bournemouth, Christchurch and Poole", 400300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000059", "Dorset", 379600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000060", "Buckinghamshire", 553100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000061", "North Northamptonshire", 359500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E06000062", "West Northamptonshire", 425700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000008", "Cambridge", 145700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000009", "East Cambridgeshire", 87700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000010", "Fenland", 102500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000011", "Huntingdonshire", 180800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000012", "South Cambridgeshire", 162000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000026", "Allerdale", 96100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000027", "Barrow-in-Furness", 67400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000028", "Carlisle", 110000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000029", "Copeland", 67100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000030", "Eden", 54700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000031", "South Lakeland", 104500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000032", "Amber Valley", 126200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000033", "Bolsover", 80300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000034", "Chesterfield", 103600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000035", "Derbyshire Dales", 71500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000036", "Erewash", 112900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000037", "High Peak", 90900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000038", "North East Derbyshire", 102000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000039", "South Derbyshire", 107200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000040", "East Devon", 150800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000041", "Exeter", 130800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000042", "Mid Devon", 82800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000043", "North Devon", 98600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000044", "South Hams", 88600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000045", "Teignbridge", 134800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000046", "Torridge", 68100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000047", "West Devon", 57100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000061", "Eastbourne", 101700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000062", "Hastings", 91100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000063", "Lewes", 99900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000064", "Rother", 93100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000065", "Wealden", 160100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000066", "Basildon", 187600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000067", "Braintree", 155200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000068", "Brentwood", 77000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000069", "Castle Point", 89600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000070", "Chelmsford", 181500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000071", "Colchester", 192700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000072", "Epping Forest", 135000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000073", "Harlow", 93300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000074", "Maldon", 66200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000075", "Rochford", 85600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000076", "Tendring", 148100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000077", "Uttlesford", 91300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000078", "Cheltenham", 118800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000079", "Cotswold", 90800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000080", "Forest of Dean", 87000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000081", "Gloucester", 132500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000082", "Stroud", 121100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000083", "Tewkesbury", 94900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000084", "Basingstoke and Deane", 185200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000085", "East Hampshire", 125700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000086", "Eastleigh", 136400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000087", "Fareham", 114500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000088", "Gosport", 81900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000089", "Hart", 99400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000090", "Havant", 124200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000091", "New Forest", 175800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000092", "Rushmoor", 99800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000093", "Test Valley", 130500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000094", "Winchester", 127500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000095", "Broxbourne", 99000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000096", "Dacorum", 155100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000098", "Hertsmere", 107800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000099", "North Hertfordshire", 133200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000102", "Three Rivers", 93800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000103", "Watford", 102300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000105", "Ashford", 132700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000106", "Canterbury", 157400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000107", "Dartford", 116800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000108", "Dover", 116400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000109", "Gravesham", 106900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000110", "Maidstone", 175800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000111", "Sevenoaks", 120500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000112", "Folkestone and Hythe", 109800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000113", "Swale", 151700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000114", "Thanet", 140600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000115", "Tonbridge and Malling", 132200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000116", "Tunbridge Wells", 115300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000117", "Burnley", 94700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000118", "Chorley", 117800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000119", "Fylde", 81400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000120", "Hyndburn", 82200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000121", "Lancaster", 142900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000122", "Pendle", 95800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000123", "Preston", 147900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000124", "Ribble Valley", 61500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000125", "Rossendale", 70800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000126", "South Ribble", 111000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000127", "West Lancashire", 117400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000128", "Wyre", 111900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000129", "Blaby", 102900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000130", "Charnwood", 183900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000131", "Harborough", 97600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000132", "Hinckley and Bosworth", 113600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000133", "Melton", 51800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000134", "North West Leicestershire", 104700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000135", "Oadby and Wigston", 57700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000136", "Boston", 70500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000137", "East Lindsey", 142300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000138", "Lincoln", 103900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000139", "North Kesteven", 118000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000140", "South Holland", 95100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000141", "South Kesteven", 143400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000142", "West Lindsey", 95200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000143", "Breckland", 141500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000144", "Broadland", 131700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000145", "Great Yarmouth", 99800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000146", "King's Lynn and West Norfolk", 154300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000147", "North Norfolk", 103000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000148", "Norwich", 144000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000149", "South Norfolk", 141900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000163", "Craven", 56900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000164", "Hambleton", 90700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000165", "Harrogate", 162700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000166", "Richmondshire", 49700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000167", "Ryedale", 54700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000168", "Scarborough", 108800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000169", "Selby", 92000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000170", "Ashfield", 126300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000171", "Bassetlaw", 117800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000172", "Broxtowe", 110900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000173", "Gedling", 117300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000174", "Mansfield", 110500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000175", "Newark and Sherwood", 122900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000176", "Rushcliffe", 119000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000177", "Cherwell", 161000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000178", "Oxford", 162100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000179", "South Oxfordshire", 149100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000180", "Vale of White Horse", 138900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000181", "West Oxfordshire", 114200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000187", "Mendip", 116100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000188", "Sedgemoor", 125400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000189", "South Somerset", 172700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000192", "Cannock Chase", 100500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000193", "East Staffordshire", 124000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000194", "Lichfield", 106400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000195", "Newcastle-under-Lyme", 123300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000196", "South Staffordshire", 110500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000197", "Stafford", 136800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000198", "Staffordshire Moorlands", 95800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000199", "Tamworth", 78600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000200", "Babergh", 92300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000202", "Ipswich", 139700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000203", "Mid Suffolk", 102700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000207", "Elmbridge", 138800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000208", "Epsom and Ewell", 80900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000209", "Guildford", 143600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000210", "Mole Valley", 87400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000211", "Reigate and Banstead", 150900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000212", "Runnymede", 88100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000213", "Spelthorne", 103000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000214", "Surrey Heath", 90500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000215", "Tandridge", 87900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000216", "Waverley", 128200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000217", "Woking", 103900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000218", "North Warwickshire", 65000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000219", "Nuneaton and Bedworth", 134200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000220", "Rugby", 114400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000221", "Stratford-on-Avon", 134700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000222", "Warwick", 148500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000223", "Adur", 64500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000224", "Arun", 164800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000225", "Chichester", 124100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000226", "Crawley", 118500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000227", "Horsham", 146800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000228", "Mid Sussex", 152600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000229", "Worthing", 111400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000234", "Bromsgrove", 99200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000235", "Malvern Hills", 79400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000236", "Redditch", 87000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000237", "Worcester", 103900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000238", "Wychavon", 132500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000239", "Wyre Forest", 101600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000240", "St Albans", 148200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000241", "Welwyn Hatfield", 119900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000242", "East Hertfordshire", 150100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000243", "Stevenage", 89500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000244", "East Suffolk", 245900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000245", "West Suffolk", 179800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E07000246", "Somerset West and Taunton", 157400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000001", "Bolton", 296000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000002", "Bury", 193800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000003", "Manchester", 552000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000004", "Oldham", 242100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000005", "Rochdale", 223800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000006", "Salford", 269900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000007", "Stockport", 294800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000008", "Tameside", 231100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000009", "Trafford", 235100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000010", "Wigan", 329300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000011", "Knowsley", 154500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000012", "Liverpool", 486100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000013", "St. Helens", 183200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000014", "Sefton", 279300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000015", "Wirral", 320200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000016", "Barnsley", 244600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000017", "Doncaster", 308100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000018", "Rotherham", 265800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000019", "Sheffield", 556500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000021", "Newcastle upon Tyne", 300200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000022", "North Tyneside", 209000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000023", "South Tyneside", 147800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000024", "Sunderland", 274200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000025", "Birmingham", 1144900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000026", "Coventry", 345300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000027", "Dudley", 323500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000028", "Sandwell", 341900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000029", "Solihull", 216200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000030", "Walsall", 284100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000031", "Wolverhampton", 263700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000032", "Bradford", 546400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000033", "Calderdale", 206600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000034", "Kirklees", 433300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000035", "Leeds", 812000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000036", "Wakefield", 353300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E08000037", "Gateshead", 196100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000001", "City of London", 8600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000002", "Barking and Dagenham", 218900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000003", "Barnet", 389300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000004", "Bexley", 246500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000005", "Brent", 339800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000006", "Bromley", 330000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000007", "Camden", 210100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000008", "Croydon", 390800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000009", "Ealing", 367100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000010", "Enfield", 330000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000011", "Greenwich", 289100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000012", "Hackney", 259200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000013", "Hammersmith and Fulham", 183200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000014", "Haringey", 264200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000015", "Harrow", 261300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000016", "Havering", 262000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000017", "Hillingdon", 305900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000018", "Hounslow", 288200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000019", "Islington", 216600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000020", "Kensington and Chelsea", 143400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000021", "Kingston upon Thames", 168000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000022", "Lambeth", 317600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000023", "Lewisham", 300600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000024", "Merton", 215200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000025", "Newham", 351100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000026", "Redbridge", 310300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000027", "Richmond upon Thames", 195200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000028", "Southwark", 307700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000029", "Sutton", 209600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000030", "Tower Hamlets", 310300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000031", "Waltham Forest", 278400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000032", "Wandsworth", 327500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("E09000033", "Westminster", 204300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000001", "Isle of Anglesey", 68900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000002", "Gwynedd", 117400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000003", "Conwy", 114800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000004", "Denbighshire", 95800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000005", "Flintshire", 155000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000006", "Wrexham", 135100);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000008", "Ceredigion", 71500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000009", "Pembrokeshire", 123400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000010", "Carmarthenshire", 187900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000011", "Swansea", 238500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000012", "Neath Port Talbot", 142300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000013", "Bridgend", 145500);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000014", "Vale of Glamorgan", 131800);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000015", "Cardiff", 362400);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000016", "Rhondda Cynon Taf", 237700);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000018", "Caerphilly", 175900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000019", "Blaenau Gwent", 66900);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000020", "Torfaen", 92300);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000021", "Monmouthshire", 93000);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000022", "Newport", 159600);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000023", "Powys", 133200);
INSERT INTO homelessness.locations (location_id, location_name, location_population) VALUES ("W06000024", "Merthyr Tydfil", 58800);

-- MIGRATION: Dataset for 2022
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E92000001", "ENGLAND", '76880', '74230', '37260', '36970');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000007", "London", '13610', '13050', '6140', '6910');

INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'apr-jun', "E12000007", "London", '14220', '14050', '6190', '7070');


INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000001", "North East", '4760', '4670', '2810', '1860');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000002", "North West", '11690', '11360', '5490', '5870');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000003", "Yorkshire and The Humber", '8050', '7890', '4330', '3560');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000004", "East Midlands", '6150', '6060', '3190', '2870');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000005", "West Midlands", '7320', '6990', '2780', '4210');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000006", "East of England", '7400', '7090', '3750', '3350');

INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000008", "South East", '10150', '9590', '5040', '4550');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E12000009", "South West", '7750', '7530', '3730', '3800');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000223", "Adur", '44', '44', '16', '28');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000026", "Allerdale", '150', '149', '78', '71');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000032", "Amber Valley", '128', '127', '97', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000224", "Arun", '241', '212', '107', '105');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000170", "Ashfield", '155', '155', '60', '95');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000105", "Ashford", '160', '157', '64', '93');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000200", "Babergh", '83', '83', '58', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000002", "Barking & Dagenham", '360', '329', '212', '117');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000003", "Barnet", '528', '517', '240', '277');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000016", "Barnsley", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000027", "Barrow-in-Furness", '101', '101', '64', '37');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000066", "Basildon", '163', '163', '39', '124');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000084", "Basingstoke & Deane", '138', '137', '92', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000171", "Bassetlaw", '70', '69', '31', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000022", "Bath & North East Somerset", '102', '102', '66', '36');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000055", "Bedford", '258', '253', '90', '163');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000004", "Bexley", '156', '155', '68', '87');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000025", "Birmingham", '1542', '1449', '481', '968');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000129", "Blaby", '103', '100', '62', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000008", "Blackburn with Darwen", '331', '283', '195', '88');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000009", "Blackpool", '383', '376', '166', '210');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000033", "Bolsover", '71', '71', '49', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000001", "Bolton", '449', '441', '164', '277');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000136", "Boston", '65', '64', '57', '7');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000058", "Bournemouth, Christchurch and Poole", '533', '529', '291', '238');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000036", "Bracknell Forest", '126', '114', '92', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000032", "Bradford", '606', '589', '371', '218');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000067", "Braintree", '116', '116', '91', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000143", "Breckland", '187', '185', '58', '127');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000005", "Brent", '534', '524', '212', '312');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000068", "Brentwood", '32', '32', '23', '9');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000043", "Brighton & Hove", '208', '196', '60', '136');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000023", "Bristol", '880', '812', '179', '633');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000144", "Broadland", '87', '86', '12', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000006", "Bromley", '352', '337', '150', '187');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000234", "Bromsgrove", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000095", "Broxbourne", '128', '122', '64', '58');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000172", "Broxtowe", '77', '77', '43', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000060", "Buckinghamshire", '480', '447', '296', '151');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000117", "Burnley", '176', '176', '71', '105');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000002", "Bury", '218', '207', '47', '160');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000033", "Calderdale", '176', '175', '112', '63');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000008", "Cambridge", '174', '157', '73', '84');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000007", "Camden", '282', '244', '73', '171');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000192", "Cannock Chase", '64', '63', '54', '9');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000106", "Canterbury", '205', '181', '68', '113');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000028", "Carlisle", '158', '157', '74', '83');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000069", "Castle Point", '77', '77', '38', '39');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000056", "Central Bedfordshire", '179', '163', '71', '92');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000130", "Charnwood", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000070", "Chelmsford", '268', '260', '104', '156');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000078", "Cheltenham", '113', '112', '52', '60');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000177", "Cherwell", '104', '104', '70', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000049", "Cheshire East", '433', '432', '256', '176');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000050", "Cheshire West & Chester", '446', '439', '158', '281');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000034", "Chesterfield", '178', '175', '94', '81');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000225", "Chichester", '70', '70', '40', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000118", "Chorley", '122', '121', '57', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000001", "City of London", '10', '10', '3', '7');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000071", "Colchester", '200', '183', '114', '69');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000029", "Copeland", '81', '81', '51', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000052", "Cornwall", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000079", "Cotswold", '52', '51', '20', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000026", "Coventry", '752', '741', '274', '467');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000163", "Craven", '48', '46', '36', '10');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000226", "Crawley", '191', '165', '94', '71');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000008", "Croydon", '631', '613', '193', '420');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000096", "Dacorum", '167', '167', '108', '59');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000005", "Darlington", '247', '236', '126', '110');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000107", "Dartford", '139', '133', '83', '50');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000015", "Derby", '709', '687', '458', '229');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000035", "Derbyshire Dales", '61', '61', '53', '8');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000017", "Doncaster", '424', '423', '141', '282');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000059", "Dorset", '431', '361', '163', '198');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000108", "Dover", '167', '164', '79', '85');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000027", "Dudley", '577', '455', '61', '394');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000047", "Durham", '672', '668', '297', '371');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000009", "Ealing", '770', '764', '497', '267');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000009", "East Cambridgeshire", '111', '108', '83', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000040", "East Devon", '190', '186', '139', '47');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000085", "East Hampshire", '71', '71', '52', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000242", "East Hertfordshire", '136', '128', '73', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000137", "East Lindsey", '186', '186', '131', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000011", "East Riding of Yorkshire", '233', '231', '70', '161');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000193", "East Staffordshire", '72', '71', '22', '49');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000244", "East Suffolk", '301', '296', '191', '105');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000061", "Eastbourne", '124', '71', '29', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000086", "Eastleigh", '97', '96', '66', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000030", "Eden", '44', '43', '16', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000207", "Elmbridge", '109', '108', '65', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000010", "Enfield", '866', '790', '522', '268');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000072", "Epping Forest", '114', '112', '62', '50');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000208", "Epsom & Ewell", '72', '72', '30', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000036", "Erewash", '117', '117', '65', '52');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000041", "Exeter", '316', '314', '163', '151');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000087", "Fareham", '206', '121', '57', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000010", "Fenland", '68', '65', '30', '35');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000112", "Folkestone & Hythe", '122', '121', '86', '35');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000080", "Forest of Dean", '70', '69', '45', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000119", "Fylde", '67', '67', '21', '46');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000037", "Gateshead", '448', '443', '373', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000173", "Gedling", '62', '62', '51', '11');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000081", "Gloucester", '269', '264', '96', '168');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000088", "Gosport", '151', '149', '94', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000109", "Gravesham", '168', '166', '63', '103');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000145", "Great Yarmouth", '263', '199', '89', '110');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000011", "Greenwich", '506', '434', '165', '269');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000209", "Guildford", '114', '112', '66', '46');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000012", "Hackney", '541', '528', '175', '353');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000006", "Halton", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000164", "Hambleton", '53', '53', '27', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000013", "Hammersmith & Fulham", '246', '239', '97', '142');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000131", "Harborough", '45', '45', '19', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000014", "Haringey", '573', '544', '400', '144');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000073", "Harlow", '99', '94', '54', '40');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000165", "Harrogate", '154', '144', '87', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000015", "Harrow", '167', '166', '71', '95');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000089", "Hart", '27', '27', '19', '8');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000001", "Hartlepool", '118', '118', '74', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000062", "Hastings", '329', '329', '149', '180');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000090", "Havant", '85', '82', '57', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000016", "Havering", '540', '532', '348', '184');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000019", "Herefordshire", '337', '337', '165', '172');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000098", "Hertsmere", '103', '103', '63', '40');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000037", "High Peak", '117', '116', '82', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000017", "Hillingdon", '480', '478', '258', '220');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000132", "Hinckley & Bosworth", '100', '100', '36', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000227", "Horsham", '122', '104', '54', '50');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000018", "Hounslow", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000011", "Huntingdonshire", '277', '274', '203', '71');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000120", "Hyndburn", '83', '83', '45', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000202", "Ipswich", '411', '380', '277', '103');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000046", "Isle of Wight", '109', '103', '54', '49');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000053", "Isles of Scilly", '0', '0', '0', '0');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000019", "Islington", '448', '438', '132', '306');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000020", "Kensington & Chelsea", '359', '340', '182', '158');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000146", "King's Lynn & West Norfolk", '163', '143', '47', '96');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000010", "Kingston upon Hull", '1057', '1009', '627', '382');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000021", "Kingston upon Thames", '84', '82', '51', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000034", "Kirklees", '429', '425', '269', '156');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000011", "Knowsley", '337', '322', '189', '133');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000022", "Lambeth", '809', '801', '354', '447');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000121", "Lancaster", '234', '226', '126', '100');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000035", "Leeds", '1612', '1602', '1071', '531');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000016", "Leicester", '793', '771', '485', '286');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000063", "Lewes", '60', '42', '11', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000023", "Lewisham", '722', '710', '426', '284');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000194", "Lichfield", '80', '80', '49', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000138", "Lincoln", '238', '236', '58', '178');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000012", "Liverpool", '377', '377', '82', '295');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000032", "Luton", '499', '483', '248', '235');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000110", "Maidstone", '253', '234', '128', '106');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000074", "Maldon", '50', '50', '26', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000235", "Malvern Hills", '45', '44', '14', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000003", "Manchester", '1799', '1771', '785', '986');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000174", "Mansfield", '152', '152', '121', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000035", "Medway Towns", '511', '503', '258', '245');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000133", "Melton", '66', '65', '44', '21');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000187", "Mendip", '162', '162', '105', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000024", "Merton", '151', '150', '98', '52');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000042", "Mid Devon", '117', '109', '54', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000203", "Mid Suffolk", '67', '66', '47', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000228", "Mid Sussex", '89', '89', '51', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000002", "Middlesbrough", '325', '321', '153', '168');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000042", "Milton Keynes", '434', '430', '149', '281');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000210", "Mole Valley", '82', '81', '55', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000091", "New Forest", '205', '197', '141', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000175", "Newark & Sherwood", '54', '53', '16', '37');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000021", "Newcastle on Tyne", '644', '608', '376', '232');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000195", "Newcastle under Lyme", '135', '132', '74', '58');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000025", "Newham", '460', '460', '186', '274');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000043", "North Devon", '289', '277', '175', '102');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000038", "North East Derbyshire", '64', '64', '47', '17');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000012", "North East Lincolnshire", '455', '444', '194', '250');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000099", "North Hertfordshire", '139', '138', '63', '75');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000139", "North Kesteven", '127', '127', '38', '89');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000013", "North Lincolnshire", '236', '233', '161', '72');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000147", "North Norfolk", '112', '112', '67', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000061", "North Northamptonshire", '320', '312', '123', '189');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000024", "North Somerset", '211', '211', '151', '60');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000022", "North Tyneside", '272', '272', '164', '108');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000218", "North Warwickshire", '41', '41', '29', '12');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000134", "North West Leicestershire", '102', '99', '43', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000057", "Northumberland", '459', '456', '316', '140');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000148", "Norwich", '132', '128', '54', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000018", "Nottingham", '643', '635', '221', '414');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000219", "Nuneaton & Bedworth", '232', '208', '77', '131');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000135", "Oadby & Wigston", '30', '30', '12', '18');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000004", "Oldham", '368', '365', '205', '160');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000178", "Oxford", '108', '102', '59', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000122", "Pendle", '155', '75', '48', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000031", "Peterborough", '381', '376', '230', '146');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000026", "Plymouth", '554', '544', '148', '396');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000044", "Portsmouth", '464', '444', '151', '293');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000123", "Preston", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000038", "Reading", '357', '263', '50', '213');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000026", "Redbridge", '271', '255', '61', '194');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000003", "Redcar & Cleveland", '131', '131', '70', '61');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000236", "Redditch", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000211", "Reigate & Banstead", '145', '140', '89', '51');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000124", "Ribble Valley", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000027", "Richmond upon Thames", '100', '99', '25', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000166", "Richmondshire", '60', '60', '32', '28');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000005", "Rochdale", '417', '415', '294', '121');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000075", "Rochford", '69', '67', '53', '14');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000125", "Rossendale", '132', '132', '119', '13');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000064", "Rother", '141', '140', '72', '68');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000018", "Rotherham", '318', '318', '148', '170');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000220", "Rugby", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000212", "Runnymede", '61', '61', '30', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000176", "Rushcliffe", '84', '80', '56', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000092", "Rushmoor", '132', '130', '68', '62');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000017", "Rutland", '41', '39', '20', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000167", "Ryedale", '53', '48', '22', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000006", "Salford", '813', '809', '294', '515');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000028", "Sandwell", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000168", "Scarborough", '214', '212', '89', '123');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000188", "Sedgemoor", '227', '224', '76', '148');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000014", "Sefton", '200', '199', '59', '140');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000169", "Selby", '71', '70', '32', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000111", "Sevenoaks", '103', '97', '67', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000019", "Sheffield", '942', '930', '277', '653');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000051", "Shropshire", '275', '275', '72', '203');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000039", "Slough", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000029", "Solihull", '237', '225', '108', '117');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000246", "Somerset West and Taunton", '136', '134', '55', '79');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000012", "South Cambridgeshire", '86', '86', '39', '47');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000039", "South Derbyshire", '65', '65', '35', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000025", "South Gloucestershire", '207', '207', '165', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000044", "South Hams", '48', '48', '33', '15');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000140", "South Holland", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000141", "South Kesteven", '175', '174', '49', '125');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000031", "South Lakeland", '168', '167', '105', '62');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000149", "South Norfolk", '96', '95', '26', '69');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000179", "South Oxfordshire", '106', '106', '92', '14');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000126", "South Ribble", '113', '109', '63', '46');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000189", "South Somerset", '127', '127', '56', '71');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000196", "South Staffordshire", '24', '24', '18', '6');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000023", "South Tyneside", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000045", "Southampton", '463', '463', '188', '275');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000033", "Southend-on-Sea", '217', '216', '136', '80');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000028", "Southwark", '718', '672', '257', '415');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000213", "Spelthorne", '123', '121', '74', '47');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000240", "St Albans", '73', '73', '42', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000013", "St Helens", '240', '240', '164', '76');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000197", "Stafford", '57', '56', '12', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000198", "Staffordshire Moorlands", '38', '36', '27', '9');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000243", "Stevenage", '181', '175', '62', '113');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000007", "Stockport", '353', '346', '243', '103');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000004", "Stockton-on-Tees", '652', '636', '484', '152');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000021", "Stoke-on-Trent", '315', '311', '138', '173');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000221", "Stratford-on-Avon", '140', '133', '63', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000082", "Stroud", '131', '130', '35', '95');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000024", "Sunderland", '467', '450', '200', '250');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000214", "Surrey Heath", '39', '38', '15', '23');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000029", "Sutton", '210', '182', '80', '102');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000113", "Swale", '266', '251', '116', '135');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000030", "Swindon", '326', '325', '96', '229');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000008", "Tameside", '278', '277', '102', '175');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000199", "Tamworth", '60', '60', '22', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000215", "Tandridge", '66', '65', '38', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000045", "Teignbridge", '201', '201', '177', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000020", "Telford & Wrekin", '266', '265', '117', '148');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000076", "Tendring", '283', '278', '159', '119');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000093", "Test Valley", '154', '152', '71', '81');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000083", "Tewkesbury", '88', '88', '65', '23');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000114", "Thanet", '243', '240', '151', '89');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000102", "Three Rivers", '95', '80', '53', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000034", "Thurrock", '173', '173', '109', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000115", "Tonbridge & Malling", '67', '65', '40', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000027", "Torbay", '277', '274', '74', '200');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000046", "Torridge", '125', '121', '64', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000030", "Tower Hamlets", '441', '422', '203', '219');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000009", "Trafford", '319', '319', '205', '114');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000116", "Tunbridge Wells", '118', '111', '75', '36');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000077", "Uttlesford", '57', '57', '19', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000180", "Vale of White Horse", '101', '101', '89', '12');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000036", "Wakefield", '477', '447', '300', '147');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000030", "Walsall", '189', '187', '99', '88');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000031", "Waltham Forest", '404', '401', '170', '231');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000032", "Wandsworth", '367', '362', '57', '305');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000007", "Warrington", '495', '448', '312', '136');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000222", "Warwick", '120', '105', '30', '75');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000103", "Watford", '89', '88', '23', '65');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000216", "Waverley", '70', '67', '44', '23');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000065", "Wealden", '105', '104', '65', '39');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000241", "Welwyn Hatfield", '257', '227', '136', '91');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000037", "West Berkshire", '108', '105', '62', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000047", "West Devon", '37', '36', '24', '12');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000127", "West Lancashire", '47', '47', '14', '33');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000142", "West Lindsey", '170', '170', '96', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000062", "West Northamptonshire", '577', '572', '273', '299');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000181", "West Oxfordshire", '72', '72', '26', '46');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000245", "West Suffolk", '176', '175', '39', '136');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E09000033", "Westminster", '431', '390', '96', '294');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000010", "Wigan", '588', '579', '211', '368');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000054", "Wiltshire", '446', '430', '286', '144');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000094", "Winchester", '78', '78', '59', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000040", "Windsor & Maidenhead", '110', '108', '51', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000015", "Wirral", '346', '320', '97', '223');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000217", "Woking", '68', '63', '48', '15');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000041", "Wokingham", '110', '110', '44', '66');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E08000031", "Wolverhampton", '665', '654', '262', '392');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000237", "Worcester", '203', '203', '102', '101');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000229", "Worthing", '124', '124', '48', '76');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000238", "Wychavon", '106', '105', '37', '68');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000128", "Wyre", '129', '128', '96', '32');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E07000239", "Wyre Forest", '84', '84', '39', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2022', 'jan-mar', "E06000014", "York", '208', '206', '140', '66');


-- MIGRATION: Dataset oct-dec 2021
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E92000001", "ENGLAND", '69300', '66630', '32000', '34640');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000001", "North East", '3950', '3840', '2180', '1670');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000002", "North West", '10120', '9790', '4530', '5260');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000003", "Yorkshire and The Humber", '6970', '6780', '3390', '3390');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000004", "East Midlands", '5410', '5300', '2670', '2630');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000005", "West Midlands", '6530', '6220', '2340', '3880');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000006", "East of England", '7010', '6680', '3470', '3210');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000007", "London", '12800', '12300', '5560', '6740');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000008", "South East", '9340', '8760', '4460', '4290');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E12000009", "South West", '7180', '6960', '3400', '3560');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000223", "Adur", '45', '44', '14', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000026", "Allerdale", '123', '123', '54', '69');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000032", "Amber Valley", '96', '96', '74', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000224", "Arun", '230', '202', '98', '104');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000170", "Ashfield", '101', '101', '34', '67');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000105", "Ashford", '147', '145', '77', '68');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000200", "Babergh", '76', '74', '52', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000002", "Barking & Dagenham", '302', '290', '171', '119');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000003", "Barnet", '469', '458', '227', '231');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000016", "Barnsley", '196', '196', '97', '99');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000027", "Barrow-in-Furness", '70', '70', '30', '40');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000066", "Basildon", '137', '136', '34', '102');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000084", "Basingstoke & Deane", '70', '68', '46', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000171", "Bassetlaw", '110', '108', '42', '66');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000022", "Bath & North East Somerset", '85', '80', '36', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000055", "Bedford", '276', '271', '118', '153');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000004", "Bexley", '153', '150', '89', '61');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000025", "Birmingham", '1245', '1228', '326', '902');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000129", "Blaby", '84', '81', '43', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000008", "Blackburn with Darwen", '263', '252', '182', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000009", "Blackpool", '347', '336', '141', '195');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000033", "Bolsover", '69', '68', '49', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000001", "Bolton", '467', '454', '180', '274');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000136", "Boston", '75', '75', '58', '17');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000058", "Bournemouth, Christchurch and Poole", '554', '553', '236', '317');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000036", "Bracknell Forest", '176', '146', '103', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000032", "Bradford", '687', '659', '404', '255');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000067", "Braintree", '116', '112', '80', '32');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000143", "Breckland", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000005", "Brent", '686', '673', '220', '453');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000068", "Brentwood", '26', '26', '15', '11');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000043", "Brighton & Hove", '228', '222', '67', '155');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000023", "Bristol", '794', '677', '123', '554');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000144", "Broadland", '61', '60', '34', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000006", "Bromley", '202', '193', '66', '127');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000234", "Bromsgrove", '54', '53', '26', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000095", "Broxbourne", '119', '116', '57', '59');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000172", "Broxtowe", '65', '63', '47', '16');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000060", "Buckinghamshire", '483', '459', '293', '166');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000117", "Burnley", '159', '159', '59', '100');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000002", "Bury", '161', '155', '28', '127');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000033", "Calderdale", '197', '195', '141', '54');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000008", "Cambridge", '174', '161', '67', '94');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000007", "Camden", '227', '194', '62', '132');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000192", "Cannock Chase", '43', '41', '33', '8');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000106", "Canterbury", '214', '199', '70', '129');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000028", "Carlisle", '93', '93', '46', '47');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000069", "Castle Point", '64', '63', '36', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000056", "Central Bedfordshire", '301', '275', '168', '107');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000130", "Charnwood", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000070", "Chelmsford", '200', '195', '74', '121');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000078", "Cheltenham", '109', '105', '45', '60');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000177", "Cherwell", '109', '108', '74', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000049", "Cheshire East", '366', '365', '228', '137');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000050", "Cheshire West & Chester", '434', '419', '166', '253');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000034", "Chesterfield", '149', '142', '98', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000225", "Chichester", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000118", "Chorley", '131', '131', '76', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000001", "City of London", '6', '6', '0', '6');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000071", "Colchester", '164', '144', '86', '58');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000029", "Copeland", '53', '53', '33', '20');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000052", "Cornwall", '977', '974', '587', '387');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000079", "Cotswold", '43', '42', '20', '22');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000026", "Coventry", '592', '580', '176', '404');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000163", "Craven", '28', '28', '17', '11');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000226", "Crawley", '181', '150', '79', '71');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000008", "Croydon", '596', '573', '179', '394');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000096", "Dacorum", '150', '147', '87', '60');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000005", "Darlington", '205', '194', '68', '126');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000107", "Dartford", '131', '129', '70', '59');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000015", "Derby", '572', '550', '370', '180');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000035", "Derbyshire Dales", '57', '57', '49', '8');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000017", "Doncaster", '358', '358', '100', '258');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000059", "Dorset", '318', '312', '152', '160');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000108", "Dover", '144', '144', '74', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000027", "Dudley", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000047", "Durham", '590', '563', '290', '273');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000009", "Ealing", '673', '670', '370', '300');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000009", "East Cambridgeshire", '92', '88', '64', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000040", "East Devon", '153', '152', '118', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000085", "East Hampshire", '42', '41', '28', '13');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000242", "East Hertfordshire", '120', '114', '63', '51');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000137", "East Lindsey", '149', '149', '104', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000011", "East Riding of Yorkshire", '173', '173', '61', '112');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000193", "East Staffordshire", '87', '70', '17', '53');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000244", "East Suffolk", '254', '253', '161', '92');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000061", "Eastbourne", '161', '102', '38', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000086", "Eastleigh", '88', '87', '54', '33');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000030", "Eden", '40', '40', '29', '11');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000207", "Elmbridge", '83', '81', '44', '37');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000010", "Enfield", '768', '725', '422', '303');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000072", "Epping Forest", '88', '88', '36', '52');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000208", "Epsom & Ewell", '58', '58', '27', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000036", "Erewash", '122', '122', '65', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000041", "Exeter", '225', '223', '113', '110');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000087", "Fareham", '151', '85', '44', '41');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000010", "Fenland", '154', '134', '38', '96');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000112", "Folkestone & Hythe", '55', '55', '36', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000080", "Forest of Dean", '59', '59', '38', '21');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000119", "Fylde", '78', '78', '33', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000037", "Gateshead", '368', '368', '282', '86');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000173", "Gedling", '55', '55', '35', '20');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000081", "Gloucester", '257', '255', '108', '147');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000088", "Gosport", '115', '115', '64', '51');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000109", "Gravesham", '143', '141', '69', '72');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000145", "Great Yarmouth", '210', '163', '77', '86');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000011", "Greenwich", '506', '449', '156', '293');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000209", "Guildford", '86', '86', '50', '36');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000012", "Hackney", '498', '493', '149', '344');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000006", "Halton", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000164", "Hambleton", '39', '39', '19', '20');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000013", "Hammersmith & Fulham", '244', '240', '88', '152');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000131", "Harborough", '56', '56', '25', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000014", "Haringey", '532', '486', '363', '123');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000073", "Harlow", '91', '91', '50', '41');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000165", "Harrogate", '137', '134', '64', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000015", "Harrow", '147', '143', '52', '91');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000089", "Hart", '13', '13', '7', '6');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000001", "Hartlepool", '78', '78', '35', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000062", "Hastings", '277', '276', '116', '160');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000090", "Havant", '118', '113', '72', '41');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000016", "Havering", '478', '462', '282', '180');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000019", "Herefordshire", '225', '225', '109', '116');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000098", "Hertsmere", '114', '112', '59', '53');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000037", "High Peak", '107', '107', '73', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000017", "Hillingdon", '421', '417', '243', '174');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000132", "Hinckley & Bosworth", '88', '88', '32', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000227", "Horsham", '102', '93', '44', '49');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000018", "Hounslow", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000011", "Huntingdonshire", '218', '215', '149', '66');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000120", "Hyndburn", '51', '51', '27', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000202", "Ipswich", '409', '383', '283', '100');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000046", "Isle of Wight", '137', '124', '75', '49');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000053", "Isles of Scilly", '0', '0', '0', '0');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000019", "Islington", '397', '388', '168', '220');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000020", "Kensington & Chelsea", '224', '202', '82', '120');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000146", "King's Lynn & West Norfolk", '144', '118', '40', '78');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000010", "Kingston upon Hull", '824', '767', '387', '380');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000021", "Kingston upon Thames", '90', '87', '48', '39');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000034", "Kirklees", '361', '359', '230', '129');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000011", "Knowsley", '263', '242', '152', '90');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000022", "Lambeth", '864', '858', '393', '465');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000121", "Lancaster", '247', '242', '118', '124');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000035", "Leeds", '1095', '1089', '690', '399');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000016", "Leicester", '611', '602', '344', '258');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000063", "Lewes", '84', '52', '18', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000023", "Lewisham", '470', '466', '245', '221');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000194", "Lichfield", '72', '72', '36', '36');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000138", "Lincoln", '202', '201', '55', '146');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000012", "Liverpool", '322', '320', '83', '237');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000032", "Luton", '460', '432', '183', '249');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000110", "Maidstone", '258', '235', '130', '105');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000074", "Maldon", '54', '54', '29', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000235", "Malvern Hills", '37', '34', '10', '24');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000003", "Manchester", '1523', '1492', '553', '939');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000174", "Mansfield", '80', '80', '40', '40');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000035", "Medway Towns", '415', '408', '198', '210');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000133", "Melton", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000187", "Mendip", '141', '141', '94', '47');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000024", "Merton", '138', '135', '103', '32');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000042", "Mid Devon", '99', '99', '46', '53');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000203", "Mid Suffolk", '59', '58', '39', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000228", "Mid Sussex", '106', '105', '54', '51');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000002", "Middlesbrough", '335', '329', '153', '176');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000042", "Milton Keynes", '446', '425', '180', '245');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000210", "Mole Valley", '79', '75', '50', '25');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000091", "New Forest", '177', '166', '107', '59');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000175", "Newark & Sherwood", '56', '55', '17', '38');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000021", "Newcastle on Tyne", '502', '480', '251', '229');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000195", "Newcastle under Lyme", '109', '108', '49', '59');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000025", "Newham", '516', '516', '227', '289');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000043", "North Devon", '259', '249', '160', '89');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000038", "North East Derbyshire", '60', '60', '39', '21');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000012", "North East Lincolnshire", '413', '379', '175', '204');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000099", "North Hertfordshire", '107', '103', '47', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000139", "North Kesteven", '110', '110', '21', '89');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000013", "North Lincolnshire", '144', '143', '113', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000147", "North Norfolk", '76', '76', '32', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000061", "North Northamptonshire", '345', '338', '146', '192');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000024", "North Somerset", '246', '244', '187', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000022", "North Tyneside", '269', '268', '157', '111');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000218", "North Warwickshire", '51', '50', '32', '18');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000134", "North West Leicestershire", '102', '96', '40', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000057", "Northumberland", '152', '152', '86', '66');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000148", "Norwich", '200', '189', '101', '88');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000018", "Nottingham", '674', '661', '305', '356');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000219", "Nuneaton & Bedworth", '216', '180', '69', '111');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000135", "Oadby & Wigston", '39', '38', '10', '28');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000004", "Oldham", '406', '405', '236', '169');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000178", "Oxford", '113', '96', '46', '50');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000122", "Pendle", '123', '65', '35', '30');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000031", "Peterborough", '379', '377', '215', '162');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000026", "Plymouth", '495', '475', '135', '340');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000044", "Portsmouth", '414', '401', '131', '270');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000123", "Preston", '200', '196', '90', '106');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000038", "Reading", '357', '265', '82', '183');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000026", "Redbridge", '267', '256', '66', '190');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000003", "Redcar & Cleveland", '146', '144', '79', '65');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000236", "Redditch", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000211", "Reigate & Banstead", '103', '102', '59', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000124", "Ribble Valley", '19', '19', '12', '7');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000027", "Richmond upon Thames", '79', '78', '29', '49');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000166", "Richmondshire", '24', '24', '13', '11');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000005", "Rochdale", '396', '392', '251', '141');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000075", "Rochford", '60', '60', '33', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000125", "Rossendale", '123', '107', '97', '10');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000064", "Rother", '74', '74', '32', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000018", "Rotherham", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000220", "Rugby", '112', '110', '55', '55');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000212", "Runnymede", '28', '27', '9', '18');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000176", "Rushcliffe", '63', '59', '30', '29');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000092", "Rushmoor", '125', '120', '67', '53');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000017", "Rutland", '27', '26', '12', '14');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000167", "Ryedale", '45', '45', '18', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000006", "Salford", '623', '620', '134', '486');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000028", "Sandwell", '302', '295', '158', '137');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000168", "Scarborough", '207', '207', '74', '133');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000188", "Sedgemoor", '198', '190', '69', '121');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000014", "Sefton", '128', '128', '58', '70');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000169", "Selby", '67', '67', '32', '35');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000111", "Sevenoaks", '96', '93', '58', '35');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000019", "Sheffield", '943', '932', '224', '708');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000051", "Shropshire", '257', '254', '57', '197');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000039", "Slough", '219', '219', '152', '67');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000029", "Solihull", '221', '212', '94', '118');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000246", "Somerset West and Taunton", '117', '111', '37', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000012", "South Cambridgeshire", '106', '105', '48', '57');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000039", "South Derbyshire", '76', '75', '32', '43');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000025", "South Gloucestershire", '251', '247', '187', '60');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000044", "South Hams", '82', '79', '48', '31');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000140", "South Holland", '50', '50', '23', '27');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000141", "South Kesteven", '153', '141', '42', '99');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000031", "South Lakeland", '149', '146', '101', '45');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000149", "South Norfolk", '69', '69', '17', '52');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000179", "South Oxfordshire", '97', '97', '89', '8');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000126", "South Ribble", '123', '117', '76', '41');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000189", "South Somerset", '133', '132', '53', '79');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000196", "South Staffordshire", '8', '8', '7', '1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000023", "South Tyneside", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000045", "Southampton", '394', '394', '134', '260');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000033", "Southend-on-Sea", '236', '232', '123', '109');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000028", "Southwark", '783', '732', '302', '430');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000213", "Spelthorne", '103', '100', '58', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000240", "St Albans", '64', '64', '38', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000013", "St Helens", '179', '176', '102', '74');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000197", "Stafford", '63', '63', '19', '44');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000198", "Staffordshire Moorlands", '44', '44', '31', '13');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000243", "Stevenage", '166', '163', '69', '94');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000007", "Stockport", '329', '318', '208', '110');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000004", "Stockton-on-Tees", '613', '591', '470', '121');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000021", "Stoke-on-Trent", '338', '334', '144', '190');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000221", "Stratford-on-Avon", '140', '129', '68', '61');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000082", "Stroud", '70', '70', '28', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000024", "Sunderland", '423', '411', '174', '237');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000214", "Surrey Heath", '37', '36', '16', '20');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000029", "Sutton", '243', '204', '95', '109');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000113", "Swale", '240', '231', '98', '133');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000030", "Swindon", '353', '353', '111', '242');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000008", "Tameside", '289', '288', '123', '165');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000199", "Tamworth", '94', '94', '38', '56');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000215", "Tandridge", '55', '55', '38', '17');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000045", "Teignbridge", '197', '191', '154', '37');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000020", "Telford & Wrekin", '222', '219', '121', '98');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000076", "Tendring", '175', '172', '79', '93');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000093", "Test Valley", '76', '74', '35', '39');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000083", "Tewkesbury", '97', '97', '51', '46');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000114", "Thanet", '290', '287', '166', '121');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000102", "Three Rivers", '80', '66', '47', '19');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000034", "Thurrock", '206', '205', '128', '77');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000115", "Tonbridge & Malling", '77', '77', '42', '35');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000027", "Torbay", '302', '302', '96', '206');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000046", "Torridge", '115', '110', '77', '33');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000030", "Tower Hamlets", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000009", "Trafford", '225', '223', '131', '92');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000116", "Tunbridge Wells", '97', '96', '63', '33');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000077", "Uttlesford", '38', '38', '17', '21');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000180", "Vale of White Horse", '106', '106', '92', '14');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000036", "Wakefield", '460', '419', '273', '146');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000030", "Walsall", '191', '190', '94', '96');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000031", "Waltham Forest", '425', '423', '183', '240');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000032", "Wandsworth", '401', '398', '53', '345');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000007", "Warrington", '363', '300', '195', '105');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000222", "Warwick", '133', '113', '49', '64');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000103", "Watford", '76', '75', '35', '40');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000216", "Waverley", '80', '75', '49', '26');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000065", "Wealden", '95', '95', '56', '39');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000241", "Welwyn Hatfield", '279', '243', '155', '88');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000037", "West Berkshire", '95', '88', '47', '41');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000047", "West Devon", '43', '43', '28', '15');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000127", "West Lancashire", '40', '40', '17', '23');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000142", "West Lindsey", '121', '120', '68', '52');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000062", "West Northamptonshire", '507', '504', '209', '295');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000181", "West Oxfordshire", '66', '66', '24', '42');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000245", "West Suffolk", '178', '177', '43', '134');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E09000033", "Westminster", '372', '340', '80', '260');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000010", "Wigan", '554', '528', '176', '352');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000054", "Wiltshire", '405', '395', '263', '132');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000094", "Winchester", '67', '65', '31', '34');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000040", "Windsor & Maidenhead", '82', '82', '46', '36');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000015", "Wirral", '301', '293', '104', '189');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000217", "Woking", '85', '77', '60', '17');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000041", "Wokingham", '84', '83', '33', '50');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E08000031", "Wolverhampton", '650', '624', '266', '358');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000237", "Worcester", '163', '157', '64', '93');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000229", "Worthing", '152', '145', '41', '104');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000238", "Wychavon", '98', '98', '26', '72');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000128", "Wyre", '119', '117', '94', '23');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E07000239", "Wyre Forest", '-1', '-1', '-1', '-1');
INSERT INTO homelessness.homelessness
            (year, period, location_id, location_name, total_init, total_oprd, threatened, homeless_relief_duty)
            VALUES ('2021', 'oct-dec', "E06000014", "York", '171', '169', '111', '58');