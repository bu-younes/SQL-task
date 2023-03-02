CREATE TABLE departments ( 
DEPARTMENT_ID INT PRIMARY KEY, 
DEPARTMENT_NAME VARCHAR(50) NOT NULL, 
MANAGER_ID INT NOT NULL, 
LOCATION_ID INT NOT NULL 
); 
  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, 
LOCATION_ID) 
VALUES 
(10, 'Administration', 200, 1700), 
(20, 'Marketing', 201, 1800), 
(30, 'Purchasing', 114, 1700), 
(40, 'Human Resources', 203, 2400), 
(50, 'Shipping', 121, 1500), 
(60, 'IT', 103, 1400), 
(70, 'Public Relations', 204, 2700), 
(80, 'Sales', 145, 2500), 
(90, 'Executive', 100, 1700), 
(100, 'Finance', 108, 1700), 
(110, 'Accounting', 205, 1700), 
(120, 'Treasury', 0, 1700), 
(130, 'Corporate Tax', 0, 1700), 
(140, 'Control And Credit', 0, 1700), 
(150, 'Shareholder Services', 0, 1700), 
(160, 'Benefits', 0, 1700), 
(170, 'Manufacturing', 0, 1700), 
(180, 'Construction', 0, 1700), 
(190, 'Contracting', 0, 1700), 
(200, 'Operations', 0, 1700), 
(210, 'IT Support', 0, 1700), 
(220, 'NOC', 0, 1700), 
(230, 'IT Helpdesk', 0, 1700), 
(240, 'Government Sales', 0, 1700), 
(250, 'Retail Sales', 0, 1700), 
(260, 'Recruiting', 0, 1700), 
(270, 'Payroll', 0, 1700); 
 
 
create table Employee ( 
EMPLOYEE_ID int PRIMARY KEY, 
FIRST_NAME varchar(50), 
LAST_NAME varchar(50), 
EMAIL varchar(50), 
PHONE_NUMBER varchar(50), 
HIRE_DATE Date , 
JOB_ID varchar(50), 
SALARY float, 
COMMISSION_PTC float, 
MANAGER_ID int, 
DEPARTMENT_ID int) 
  



insert into Employee values  
(100,'Steven'   ,'King' ,'SKING'    , '515.123.4567'    , '2003-06-17'  ,'AD_PRES'         ,   24000.00 ,           0.00 ,          0 ,            90     ),
(101,'Neena'    ,'Kochhar'  ,'NKOCHHAR' , '515.123.4568'    , '2005-09-21'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90 ),
(102,'Lex'  ,'De Haan'  ,'LDEHAAN'  , '515.123.4569'    , '2001-01-13'  ,'AD_VP'           ,   17000.00 ,           0.00 ,        100 ,            90     ),
(103,'Alexand'  ,'Hunold'   ,'AHUNOLD'  , '590.423.4567'    , '2006-01-03'  ,'IT_PROG'     ,    9000.00 ,           0.00 ,        102 ,            60     ),
(104,'Bruce'    ,'Ernst'    ,'BERNST'   , '590.423.4568'    , '2007-05-21'  ,'IT_PROG'         ,    6000.00 ,           0.00 ,        103 ,            60 ),
(105,'David'    ,'Austin'   ,'DAUSTIN'  , '590.423.4569'    , '2005-06-25'  ,'IT_PROG'         ,    4800.00 ,           0.00 ,        103 ,            60 ),
(106,'Valli'    ,'Pataballa'    ,'VPATABAL' , '590.423.4560'    , '2006-02-05'  ,'IT_PROG'     ,    4800.00 ,           0.00 ,        103 ,            60 ),
(107,'Diana'    ,'Lorentz'  ,'DLORENTZ' , '590.423.5567'    , '2007-02-07'  ,'IT_PROG'         ,    4200.00 ,           0.00 ,        103 ,            60 ),
(108,'Nancy'    ,'Greenberg'    ,'NGREENBE' , '515.124.4569'    , '2002-08-17'  ,'FI_MGR'      ,   12008.00 ,           0.00 ,        101 ,           100 ),
(109,'Daniel'   ,'Faviet'   ,'DFAVIET'  , '515.124.4169'    , '2002-08-16'  ,'FI_ACCOUNT'  ,    9000.00 ,           0.00 ,        108 ,           100     ),
(110,'John' ,'Chen' ,'JCHEN'    , '515.124.4269'    , '2005-09-28'  ,'FI_ACCOUNT'          ,    8200.00 ,           0.00 ,        108 ,           100     ),
(111,'Ismael'   ,'Sciarra'  ,'ISCIARRA' , '515.124.4369'    , '2005-09-30'  ,'FI_ACCOUNT'  ,    7700.00 ,           0.00 ,        108 ,           100     ),
(112,'Jose Ma'  ,'Urman'    ,'JMURMAN'  , '515.124.4469'    , '2006-03-07'  ,'FI_ACCOUNT'  ,    7800.00 ,           0.00 ,        108 ,           100     ),
(113,'Luis' ,'Popp' ,'LPOPP'    , '515.124.4567'    , '2007-12-07'  ,'FI_ACCOUNT'          ,    6900.00 ,           0.00 ,        108 ,           100     ),
(114,'Den'  ,'Raphaely' ,'DRAPHEAL' , '515.127.4561'    , '2002-12-07'  ,'PU_MAN'          ,   11000.00 ,           0.00 ,        100 ,            30     ),
(115,'Alexand'  ,'Khoo' ,'AKHOO'    , '515.127.4562'    , '2003-05-18'  ,'PU_CLERK'        ,    3100.00 ,           0.00 ,        114 ,            30     ),
(116,'Shelli'   ,'Baida'    ,'SBAIDA'   , '515.127.4563'    , '2005-12-24'  ,'PU_CLERK'    ,    2900.00 ,           0.00 ,        114 ,            30     ),
(117,'Sigal'    ,'Tobias'   ,'STOBIAS'  , '515.127.4564'    , '2005-07-24'  ,'PU_CLERK'        ,    2800.00 ,           0.00 ,        114 ,            30 ),
(118,'Guy'  ,'Himuro'   ,'GHIMURO'  , '515.127.4565'    , '2006-11-15'  ,'PU_CLERK'        ,    2600.00 ,           0.00 ,        114 ,            30     ),
(119,'Karen'    ,'Colmenares'   ,'KCOLMENA' , '515.127.4566'    , '2007-08-10'  ,'PU_CLERK'    ,    2500.00 ,           0.00 ,        114 ,            30 ),
(120,'Matthew'  ,'Weiss'    ,'MWEISS'   , '650.123.1234'    , '2004-07-18'  ,'ST_MAN'      ,    8000.00 ,           0.00 ,        100 ,            50     ),
(121,'Adam' ,'Fripp'    ,'AFRIPP'   , '650.123.2234'    , '2005-04-10'  ,'ST_MAN'          ,    8200.00 ,           0.00 ,        100 ,            50     ),
(122,'Payam'    ,'Kaufling' ,'PKAUFLIN' , '650.123.3234'    , '2003-05-01'  ,'ST_MAN'          ,    7900.00 ,           0.00 ,        100 ,            50 ),
(123,'Shanta'   ,'Vollman'  ,'SVOLLMAN' , '650.123.4234'    , '2005-10-10'  ,'ST_MAN'      ,    6500.00 ,           0.00 ,        100 ,            50     ),
(124,'Kevin'    ,'Mourgos'  ,'KMOURGOS' , '650.123.5234'    , '2007-11-16'  ,'ST_MAN'          ,    5800.00 ,           0.00 ,        100 ,            50 ),
(125,'Julia'    ,'Nayer'    ,'JNAYER'   , '650.124.1214'    , '2005-07-16'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50 ),
(126,'Irene'    ,'Mikkilinen'   ,'IMIKKILI' , '650.124.1224'    , '2006-09-28'  ,'ST_CLERK',    2700.00 ,           0.00 ,        120 ,            50 ),
(127,'James'    ,'Landry'   ,'JLANDRY'  , '650.124.1334'    , '2007-01-14'  ,'ST_CLERK'    ,    2400.00 ,           0.00 ,        120 ,            50 ),
(128,'Steven'   ,'Markle'   ,'SMARKLE'  , '650.124.1434'    , '2008-03-08'  ,'ST_CLERK'    ,    2200.00 ,           0.00 ,        120 ,            50     ),
(129,'Laura'    ,'Bissot'   ,'LBISSOT'  , '650.124.5234'    , '2005-08-20'  ,'ST_CLERK'    ,    3300.00 ,           0.00 ,        121 ,            50 ),
(130,'Mozhe'    ,'Atkinson' ,'MATKINSO' , '650.124.6234'    , '2005-10-30'  ,'ST_CLERK'    ,    2800.00 ,           0.00 ,        121 ,            50 ),
(131,'James'    ,'Marlow'   ,'JAMRLOW'  , '650.124.7234'    , '2005-02-16'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        121 ,            50 ),
(132,'TJ'   ,'Olson'    ,'TJOLSON'  , '650.124.8234'    , '2007-04-10'  ,'ST_CLERK'        ,    2100.00 ,           0.00 ,        121 ,            50     ),
(133,'Jason'    ,'Mallin'   ,'JMALLIN'  , '650.127.1934'    , '2004-06-14'  ,'ST_CLERK'    ,    3300.00 ,           0.00 ,        122 ,            50 ),
(134,'Michael'  ,'Rogers'   ,'MROGERS'  , '650.127.1834'    , '2006-08-26'  ,'ST_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(135,'Ki'   ,'Gee'  ,'KGEE' , '650.127.1734'    , '2007-12-12'  ,'ST_CLERK'                ,    2400.00 ,           0.00 ,        122 ,            50     ),
(136,'Hazel'    ,'Philtanker'   ,'HPHILTAN' , '650.127.1634'    , '2008-02-06','ST_CLERK'  ,    2200.00 ,           0.00 ,        122 ,            50 ),
(137,'Renske'   ,'Ladwig'   ,'RLADWIG'  , '650.121.1234'    , '2003-07-14'  ,'ST_CLERK'    ,    3600.00 ,           0.00 ,        123 ,            50     ),
(138,'Stephen'  ,'Stiles'   ,'SSTILES'  , '650.121.2034'    , '2005-10-26'  ,'ST_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(139,'John' ,'Seo'  ,'JSEO' , '650.121.2019'    , '2006-02-12'  ,'ST_CLERK'                ,    2700.00 ,           0.00 ,        123 ,            50     ),
(140,'Joshua'   ,'Patel'    ,'JPATEL'   , '650.121.1834'    , '2006-04-06'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        123 ,            50     ),
(141,'Trenna'   ,'Rajs' ,'TRAJS'    , '650.121.8009'    , '2003-10-17'  ,'ST_CLERK'        ,    3500.00 ,           0.00 ,        124 ,            50     ),
(142,'Curtis'   ,'Davies'   ,'CDAVIES'  , '650.121.2994'    , '2005-01-29'  ,'ST_CLERK'    ,    3100.00 ,           0.00 ,        124 ,            50     ),
(143,'Randall'  ,'Matos'    ,'RMATOS'   , '650.121.2874'    , '2006-03-15'  ,'ST_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(144,'Peter'    ,'Vargas'   ,'PVARGAS'  , '650.121.2004'    , '2006-07-09'  ,'ST_CLERK'    ,    2500.00 ,           0.00 ,        124 ,            50 ),
(145,'John' ,'Russell'  ,'JRUSSEL'  , '011.44.1344.429' , '2004-10-01'  ,'SA_MAN'          ,   14000.00 ,           0.40 ,        100 ,            80     ),
(146,'Karen'    ,'Partners' ,'KPARTNER' , '011.44.1344.467' , '2005-01-05'  ,'SA_MAN'      ,   13500.00 ,           0.30 ,        100 ,            80 ),
(147,'Alberto'  ,'Errazuriz'    ,'AERRAZUR' , '011.44.1344.429' , '2005-03-10'  ,'SA_MAN'  ,   12000.00 ,           0.30 ,        100 ,            80     ),
(148,'Gerald'   ,'Cambrault'    ,'GCAMBRAU' , '011.44.1344.619' , '2007-10-15'  ,'SA_MAN'  ,   11000.00 ,           0.30 ,        100 ,            80     ),
(149,'Eleni'    ,'Zlotkey'  ,'EZLOTKEY' , '011.44.1344.429' , '2008-01-29'  ,'SA_MAN'      ,   10500.00 ,           0.20 ,        100 ,            80 ),
(150,'Peter'    ,'Tucker'   ,'PTUCKER'  , '011.44.1344.129' , '2005-01-30'  ,'SA_REP'      ,   10000.00 ,           0.30 ,        145 ,            80 ),
(151,'David'    ,'Bernstein'    ,'DBERNSTE' , '011.44.1344.345' , '2005-03-24'  ,'SA_REP'  ,    9500.00 ,           0.25 ,        145 ,            80 ),
(152,'Peter'    ,'Hall' ,'PHALL'    , '011.44.1344.478' , '2005-08-20'  ,'SA_REP'          ,    9000.00 ,           0.25 ,    145 ,            80 ),
(153,'Christo'  ,'Olsen'    ,'COLSEN'   , '011.44.1344.498' , '2006-03-30'  ,'SA_REP'      ,    8000.00 ,           0.20 ,        145 ,            80     ),
(154,'Nanette'  ,'Cambrault'    ,'NCAMBRAU' , '011.44.1344.987' , '2006-12-09'  ,'SA_REP'  ,    7500.00 ,           0.20 ,        145 ,            80     ),
(155,'Oliver'   ,'Tuvault'  ,'OTUVAULT' , '011.44.1344.486' , '2007-11-23'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        145 ,            80     ),
(156,'Janette'  ,'King' ,'JKING'    , '011.44.1345.429' , '2004-01-30'  ,'SA_REP'          ,   10000.00 ,           0.35 ,        146 ,            80     ),
(157,'Patrick'  ,'Sully'    ,'PSULLY'   , '011.44.1345.929' , '2004-03-04'  ,'SA_REP'      ,    9500.00 ,           0.35 ,        146 ,            80     ),
(158,'Allan'    ,'McEwen'   ,'AMCEWEN'  , '011.44.1345.829' , '2004-08-01'  ,'SA_REP'          ,    9000.00 ,           0.35 ,    146 ,            80 ),
(159,'Lindsey'  ,'Smith'    ,'LSMITH'   , '011.44.1345.729' , '2005-03-10'  ,'SA_REP'      ,    8000.00 ,           0.30 ,        146 ,            80     ),
(160,'Louise'   ,'Doran'    ,'LDORAN'   , '011.44.1345.629' , '2005-12-15'  ,'SA_REP'      ,    7500.00 ,           0.30 ,        146 ,            80     ),
(161,'Sarath'   ,'Sewall'   ,'SSEWALL'  , '011.44.1345.529' , '2006-11-03'  ,'SA_REP'      ,    7000.00 ,           0.25 ,        146 ,            80     ),
(162,'Clara'    ,'Vishney'  ,'CVISHNEY' , '011.44.1346.129' , '2005-11-11'  ,'SA_REP'          ,   10500.00 ,           0.25 ,    147 ,            80 ),
(163,'Daniell'  ,'Greene'   ,'DGREENE'  , '011.44.1346.229' , '2007-03-19'  ,'SA_REP'      ,    9500.00 ,           0.15 ,        147 ,            80     ),
(164,'Mattea'   ,'Marvins'  ,'MMARVINS' , '011.44.1346.329' , '2008-01-24'  ,'SA_REP'      ,    7200.00 ,           0.10 ,        147 ,            80     ),
(165,'David'    ,'Lee'  ,'DLEE' , '011.44.1346.529' , '2008-02-23'  ,'SA_REP'                  ,    6800.00 ,           0.10 ,    147 ,            80 ),
(166,'Sundar'   ,'Ande' ,'SANDE'    , '011.44.1346.629' , '2008-03-24'  ,'SA_REP'          ,    6400.00 ,           0.10 ,        147 ,            80     ),
(167,'Amit' ,'Banda'    ,'ABANDA'   , '011.44.1346.729' , '2008-04-21'  ,'SA_REP'          ,    6200.00 ,           0.10 ,        147 ,            80     ),
(168,'Lisa' ,'Ozer' ,'LOZER'    , '011.44.1343.929' , '2005-03-11'  ,'SA_REP'              ,   11500.00 ,           0.25 ,        148 ,            80     ),
(169,'Harriso'  ,'Bloom'    ,'HBLOOM'   , '011.44.1343.829' , '2006-03-23'  ,'SA_REP'      ,   10000.00 ,           0.20 ,        148 ,            80     ),
(170,'Tayler'   ,'Fox'  ,'TFOX' , '011.44.1343.729' , '2006-01-24'  ,'SA_REP'              ,    9600.00 ,           0.20 ,        148 ,            80     ),
(171,'William'  ,'Smith'    ,'WSMITH'   , '011.44.1343.629' , '2007-02-23'  ,'SA_REP'      ,    7400.00 ,           0.15 ,        148 ,            80     ),
(172,'Elizabe'  ,'Bates'    ,'EBATES'   , '011.44.1343.529' , '2007-03-24'  ,'SA_REP'      ,    7300.00 ,           0.15 ,        148 ,            80     ),
(173,'Sundita'  ,'Kumar'    ,'SKUMAR'   , '011.44.1343.329' , '2008-04-21'  ,'SA_REP'      ,    6100.00 ,           0.10 ,        148 ,            80     ),
(174,'Ellen'    ,'Abel' ,'EABEL'    , '011.44.1644.429' , '2004-05-11'  ,'SA_REP'              ,   11000.00 ,           0.30 ,    149 ,            80 ),
(175,'Alyssa'   ,'Hutton'   ,'AHUTTON'  , '011.44.1644.429' , '2005-03-19'  ,'SA_REP'      ,    8800.00 ,           0.25 ,        149 ,            80     ),
(176,'Jonatho'  ,'Taylor'   ,'JTAYLOR'  , '011.44.1644.429' , '2006-03-24'  ,'SA_REP'      ,    8600.00 ,           0.20 ,        149 ,            80     ),
(177,'Jack' ,'Livingston'   ,'JLIVINGS' , '011.44.1644.429' , '2006-04-23'  ,'SA_REP'      ,    8400.00 ,           0.20 ,        149 ,            80     ),
(178,'Kimbere'  ,'Grant'    ,'KGRANT'   , '011.44.1644.429' , '2007-05-24'  ,'SA_REP'      ,    7000.00 ,           0.15 ,        149 ,             0     ),
(179,'Charles'  ,'Johnson'  ,'CJOHNSON' , '011.44.1644.429' , '2008-01-04'  ,'SA_REP'      ,    6200.00 ,           0.10 ,        149 ,            80     ),
(180,'Winston'  ,'Taylor'   ,'WTAYLOR'  , '650.507.9876'    , '2006-01-24'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        120 ,            50     ),
(181,'Jean' ,'Fleaur'   ,'JFLEAUR'  , '650.507.9877'    , '2006-02-23'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,        120 ,            50     ),
(182,'Martha'   ,'Sullivan' ,'MSULLIVA' , '650.507.9878'    , '2007-06-21'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        120 ,            50     ),
(183,'Girard'   ,'Geoni'    ,'GGEONI'   , '650.507.9879'    , '2008-02-03'  ,'SH_CLERK'    ,    2800.00 ,           0.00 ,        120 ,            50     ),
(184,'Nandita'  ,'Sarchand' ,'NSARCHAN' , '650.509.1876'    , '2004-01-27'  ,'SH_CLERK'    ,    4200.00 ,           0.00 ,        121 ,            50     ),
(185,'Alexis'   ,'Bull' ,'ABULL'    , '650.509.2876'    , '2005-02-20'  ,'SH_CLERK'        ,    4100.00 ,           0.00 ,        121 ,            50     ),
(186,'Julia'    ,'Dellinger'    ,'JDELLING' , '650.509.3876'    , '2006-06-24'  ,'SH_CLERK'    ,    3400.00 ,           0.00 ,    121 ,            50 ),
(187,'Anthony'  ,'Cabrio'   ,'ACABRIO'  , '650.509.4876'    , '2007-02-07'  ,'SH_CLERK'    ,    3000.00 ,           0.00 ,        121 ,            50     ),
(188,'Kelly'    ,'Chung'    ,'KCHUNG'   , '650.505.1876'    , '2005-06-14'  ,'SH_CLERK'        ,    3800.00 ,           0.00 ,    122 ,            50 ),
(189,'Jennife'  ,'Dilly'    ,'JDILLY'   , '650.505.2876'    , '2005-08-13'  ,'SH_CLERK'    ,    3600.00 ,           0.00 ,        122 ,            50     ),
(190,'Timothy'  ,'Gates'    ,'TGATES'   , '650.505.3876'    , '2006-07-11'  ,'SH_CLERK'    ,    2900.00 ,           0.00 ,        122 ,            50     ),
(191,'Randall'  ,'Perkins'  ,'RPERKINS' , '650.505.4876'    , '2007-12-19'  ,'SH_CLERK'    ,    2500.00 ,           0.00 ,        122 ,            50     ),
(192,'Sarah'    ,'Bell' ,'SBELL'    , '650.501.1876'    , '2004-02-04'  ,'SH_CLERK'            ,    4000.00 ,           0.00 ,    123 ,            50 ),
(193,'Britney'  ,'Everett'  ,'BEVERETT' , '650.501.2876'    , '2005-03-03'  ,'SH_CLERK'    ,    3900.00 ,           0.00 ,        123 ,            50     ),
(194,'Samuel'   ,'McCain'   ,'SMCCAIN'  , '650.501.3876'    , '2006-07-01'  ,'SH_CLERK'    ,    3200.00 ,           0.00 ,        123 ,            50     ),
(195,'Vance'    ,'Jones'    ,'VJONES'   , '650.501.4876'    , '2007-03-17'  ,'SH_CLERK'        ,    2800.00 ,           0.00 ,    123 ,            50 ),
(196,'Alana'    ,'Walsh'    ,'AWALSH'   , '650.507.9811'    , '2006-04-24'  ,'SH_CLERK'        ,    3100.00 ,           0.00 ,    124 ,            50 ),
(197,'Kevin'    ,'Feeney'   ,'KFEENEY'  , '650.507.9822'    , '2006-05-23'  ,'SH_CLERK'        ,    3000.00 ,           0.00 ,    124 ,            50 ),
(198,'Donald'   ,'OConnell' ,'DOCONNEL' , '650.507.9833'    , '2007-06-21'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(199,'Douglas'  ,'Grant'    ,'DGRANT'   , '650.507.9844'    , '2008-01-13'  ,'SH_CLERK'    ,    2600.00 ,           0.00 ,        124 ,            50     ),
(200,'Jennife'  ,'Whalen'   ,'JWHALEN'  , '515.123.4444'    , '2003-09-17'  ,'AD_ASST'     ,    4400.00 ,           0.00 ,        101 ,            10     ),
(201,'Michael'  ,'Hartstein'    ,'MHARTSTE' , '515.123.5555'    , '2004-02-17'  ,'MK_MAN'  ,   13000.00 ,           0.00 ,        100 ,            20     ),
(202,'Pat'  ,'Fay'  ,'PFAY' , '603.123.6666'    , '2005-08-17'  ,'MK_REP'                  ,    6000.00 ,           0.00 ,        201 ,            20     ),
(203,'Susan'    ,'Mavris'   ,'SMAVRIS'  , '515.123.7777'    , '2002-06-07'  ,'HR_REP'          ,    6500.00 ,           0.00 ,    101 ,            40 ),
(204,'Hermann'  ,'Baer' ,'HBAER'    , '515.123.8888'    , '2002-06-07'  ,'PR_REP'          ,   10000.00 ,           0.00 ,        101 ,            70     ),
(205,'Shelley'  ,'Higgins'  ,'SHIGGINS' , '515.123.8080'    , '2002-06-07'  ,'AC_MGR'      ,   12008.00 ,           0.00 ,        101 ,           110     ),
(206,'William'  ,'Gietz'    ,'WGIETZ'   , '515.123.8181'    , '2002-06-07'  ,'AC_ACCOUNT'  ,    8300.00 ,           0.00 ,        205 ,           110     );
 
 
CREATE TABLE Locations ( 
    LOCATION_ID INT PRIMARY KEY, 
    STREET_ADDRESS VARCHAR(255), 
    POSTAL_CODE VARCHAR(255), 
    CITY VARCHAR(255), 
    STATE_PROVINCE VARCHAR(255), 
    COUNTRY_ID CHAR(2) 
); 

INSERT INTO Locations 
(LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
COUNTRY_ID) 
VALUES 
(1000, '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'), 
(1100, '93091 Calle della Testa', '10934', 'Venice', '', 'IT'), 
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'), 
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'), 
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'), 
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'), 
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'), 
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'), 
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'), 
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'), 
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'), 
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'), 
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'), 
(2300, '198 Clementi North', '540198', 'Singapore', '', 'SG'), 
(2400, '8204 Arthur St', '', 'London', '', 'UK'), 
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'), 
(2600, '9702 Chester Road', '9629850 293', 'Stretford', 'Manchester', 'UK'), 
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'), 
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'), 
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'), 
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'), 
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'), 
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX'); 
 
 
 
 
create table Job_grades ( 
GRADE_LEVEL varchar(50), 
LOWEST_SAL int, 
HIGHEST_SAL int) 
  
insert into Job_grades values 
('A', 1000,2999), 
('B', 3000, 5999), 
('C', 6000, 9999), 
('D',10000,14999), 
('E' , 15000,24999), 
('F', 25000,40000); 
 
 
 
 
 
 
 
 
 --------------------------------------------------------------------TASK 2 ---------------------------------------------------------------------------------------------





 
CREATE TABLE Salesman ( 
    salesman_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    commission DECIMAL(4, 2) NOT NULL 
); 
  
INSERT INTO Salesman (salesman_id, name, city, commission) 
VALUES 
    (5001, 'James Hoog', 'New York', 0.15), 
    (5002, 'Nail Knite', 'Paris', 0.13), 
    (5005, 'Pit Alex', 'London', 0.11), 
    (5006, 'Mc Lyon', 'Paris', 0.14), 
    (5007, 'Paul Adam', 'Rome', 0.13), 
    (5003, 'Lauson Hen', 'San Jose', 0.12); 
 

CREATE TABLE Customer ( 
    customer_id INT PRIMARY KEY, 
    cust_name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    grade INT, 
    salesman_id INT, 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001), 
    (3007, 'Brad Davis', 'New York', 200, 5001), 
    (3005, 'Graham Zusi', 'California', 200, 5002), 
    (3008, 'Julian Green', 'London', 300, 5002), 
    (3004, 'Fabian Johnson', 'Paris', 300, 5006), 
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
    (3001, 'Brad Guzan', 'London', NULL, 5005); 
 
 
CREATE TABLE Orders ( 
    ord_no INT PRIMARY KEY, 
    purch_amt DECIMAL(8, 2) NOT NULL, 
    ord_date DATE NOT NULL, 
    customer_id INT, 
    salesman_id INT, 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 
VALUES 
    (70001, 150.5, '2012-10-05', 3005, 5002), 
    (70009, 270.65, '2012-09-10', 3001, 5005), 
    (70002, 65.26, '2012-10-05', 3002, 5001), 
    (70004, 110.5, '2012-08-17', 3009, 5003), 
    (70007, 948.5, '2012-09-10', 3005, 5002), 
    (70005, 2400.6, '2012-07-27', 3007, 5001), 
    (70008, 5760, '2012-09-10', 3002, 5001), 
    (70010, 1983.43, '2012-10-10', 3004, 5006), 
    (70003, 2480.4, '2012-10-10', 3009, 5003), 
    (70012, 250.45, '2012-06-27', 3008, 5002), 
    (70011, 75.29, '2012-08-17', 3003, 5007), 
    (70013, 3045.6, '2012-04-25', 3002, 5001); 
 
 
 
 
CREATE TABLE Company_mast ( 
    COM_ID INT PRIMARY KEY, 
    COM_NAME VARCHAR(30) NOT NULL 
); 
  
INSERT INTO Company_mast (COM_ID, COM_NAME) 
VALUES 
    (11, 'Samsung'), 
    (12, 'iBall'), 
    (13, 'Epsion'), 
    (14, 'Zebronics'), 
    (15, 'Asus'), 
    (16, 'Frontech'); 
 
 
create table item_mast ( 
PRO_ID int PRIMARY KEY, 
PRO_NAME varchar(50), 
PRO_PRICE float, 
PRO_COM int) 
  
insert into item_mast values  
(101,'Mother Board', 3200.00,15), 
(102, 'Key Board', 450.00, 16), 
(103, 'ZIP drive', 250.00,14), 
(104, 'Speaker' , 550.00,16), 
(105, 'Monitor' , 5000.00,11), 
(106, 'DVD drive', 900.00, 12), 
(107, 'CD drive', 800.00, 12), 
(108, 'Printer', 2600.00, 13), 
(109, 'Refill cartridge' , 350.00, 13), 
(110, ' Mouse', 250.00, 12); 
 


CREATE TABLE DEPARTMENT ( 
    DPT_CODE INT PRIMARY KEY, 
    DPT_NAME VARCHAR(20) NOT NULL, 
    DPT_ALLOTMENT FLOAT NOT NULL 
); 
  
 
INSERT INTO DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) 
VALUES 
(57, 'IT', 65000), 
(63, 'Finance', 15000), 
(47, 'HR', 240000), 
(27, 'RD', 55000), 
(89, 'QC', 75000); 
 


 CREATE TABLE EMP_DETAILS ( 
    EMP_IDNO INT PRIMARY KEY, 
    EMP_FNAME VARCHAR(50) NOT NULL, 
    EMP_LNAME VARCHAR(50) NOT NULL, 
    EMP_DEPT INT NOT NULL 
); 
  
INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, 
EMP_DEPT) 
VALUES  
(127323, 'Michale', 'Robbin', 57), 
(526689, 'Carlos', 'Snares', 63), 
(843795, 'Enric', 'Dosio', 57), 
(328717, 'Jhon', 'Snares', 63), 
(444527, 'Joseph', 'Dosni', 47), 
(659831, 'Zanifer', 'Emily', 47), 
(847674, 'Kuleswar', 'Sitaraman', 57), 
(748681, 'Henrey', 'Gabriel', 47), 
(555935, 'Alex', 'Manuel', 57), 
(539569, 'George', 'Mardy', 27), 
(733843, 'Mario', 'Saule', 63), 
(631548, 'Alan', 'Snappy', 27), 
(839139, 'Maria', 'Foster', 57); 
 
 




 --Task 1:

-- Questions:   
--1. From the following tables, write a SQL query to find the first name, last name, department number, and department name for each employee. 
SELECT Employee.FIRST_NAME,LAST_NAME, departments.DEPARTMENT_ID,DEPARTMENT_NAME
FROM  Employee
INNER JOIN departments ON Employee.DEPARTMENT_ID = departments.DEPARTMENT_ID;
--2. From the following tables, write a SQL query to find the first name, last name, department, city, and state province for each employee.   Locations ( STATE_PROVINCE CITY 
SELECT Employee.FIRST_NAME,LAST_NAME, departments.DEPARTMENT_NAME, Locations.CITY,STATE_PROVINCE
FROM ((Employee
INNER JOIN departments ON employee.DEPARTMENT_ID = employee.DEPARTMENT_ID)
INNER JOIN Locations ON departments.LOCATION_ID = Locations.LOCATION_ID);
--3. From the following table, write a SQL query to find the first name, last name, salary, and job grades for all employees.
SELECT Employee.FIRST_NAME, LAST_NAME,SALARY, Job_grades.grade_level
 FROM employee 
   JOIN job_grades   ON Employee.SALARY BETWEEN Job_grades.lowest_sal AND Job_grades.highest_sal;
--4. From the following tables, write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name. 
SELECT Employee.FIRST_NAME , Employee.LAST_NAME , 
       Employee.DEPARTMENT_ID ,  departments.DEPARTMENT_NAME
         FROM employee   JOIN departments ON Employee.DEPARTMENT_ID = departments.DEPARTMENT_ID 
          AND Employee.DEPARTMENT_ID IN (80 , 40)
           ORDER BY Employee.LAST_NAME;

                        --or--

SELECT Employee.first_name, Employee.last_name, Employee.department_id, departments.department_name
FROM employee 
JOIN departments 
ON Employee.department_id = departments.department_id
WHERE Employee.department_id IN (80, 40)
ORDER BY Employee.last_name;
--5. From the following tables, write a SQL query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province. 
SELECT Employee.first_name,Employee.last_name,
   departments.department_name, locations.city, locations.state_province
     FROM Employee  
      JOIN departments  ON Employee.department_id = departments.department_id 
        JOIN locations ON departments.location_id = locations.location_id 
           WHERE Employee.first_name LIKE  '%z%';
--6. From the following tables, write a SQL query to find all departments, including those without employees. Return first name, last name, department ID, department name.  
SELECT Employee.first_name, Employee.last_name, departments.department_id, departments.department_name 
 FROM employee 
   RIGHT OUTER JOIN departments 
     ON Employee.department_id = departments.department_id;
--7. From the following table, write a SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary. 
SELECT Employee.first_name, Employee.last_name, Employee.salary 
  FROM employee  
   JOIN employee S
     ON Employee.salary < S.salary 
      AND S.employee_id = 182;
--8. From the following table, write a SQL query to find the employees and their managers. Return the first name of the employee and manager. 
SELECT E.first_name AS "Employee Name", 
   M.first_name AS "Manager"
     FROM employee E 
       JOIN employee M
         ON E.manager_id = M.employee_id;
--9. From the following tables, write a SQL query to display the department name, city, and state province for each department. 
SELECT D.department_name , L.city , L.state_province
  FROM  departments D 
    JOIN locations L 
      ON  D.location_id = L.location_id;

--11. From the following table, write a SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager. 
SELECT E.first_name AS "Employee Name",
   M.first_name AS "Manager"
    FROM employee E 
      LEFT OUTER JOIN employee M
       ON E.manager_id = M.employee_id;
--12. From the following tables, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID. 
SELECT E.first_name, E.last_name, E.department_id 
 FROM employee E 
   JOIN employee S
     ON E.department_id = S.department_id
       AND S.last_name = 'Taylor';
--13. From the following table, write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and number of employees. 
SELECT department_name, AVG(salary) as AVG, COUNT(employee_id)  AS Count
FROM departments 
JOIN employee ON departments.department_id = employee.department_id 
GROUP BY department_name;
--14. From the following tables, write a SQL query to find the department name and the full name (first and last name) of the employee. 
SELECT E.first_name , E.last_name , 
       E.department_id , D.department_name 
        FROM employee E 
         JOIN departments D 
          ON E.department_id = D.department_id;
--15. From the following tables, write a SQL query to find the department name, full name (first and last name) of the employee and their city. 
SELECT department_name, first_name + ' ' + last_name AS name_of_manager, city 
FROM departments D 
JOIN employee E 
ON D.manager_id = E.employee_id 
JOIN locations L 
ON D.location_id = L.location_id;
--16. From the following tables, write a SQL query to find full name (first and last name), and salary of all employees working in any department in the city of London. 
	SELECT first_name + ' ' + last_name AS Employee_name, salary
FROM employee
JOIN departments ON employee.department_id = departments.department_id
JOIN locations ON departments.location_id = locations.location_id
WHERE city = 'London';
--17. From the following tables, write a SQL query to find the department name, department ID, and number of employees in each department.  
   SELECT d.department_name,
       e.*
FROM departments d
JOIN
  (SELECT count(employee_id) as number_of_employees,
          department_id
   FROM employee
   GROUP BY department_id) e ON d.department_id = e.department_id;
--------------------------------------------------------------------------------------------------- 
--------------------------------------------------------------------------------------------------- 
 




--Task 2: 
------------------------------------ 
 

 --Questions:  

--18. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city. 
SELECT salesman.name AS "Salesman",
customer.cust_name, customer.city 
FROM salesman,customer 
WHERE salesman.city=customer.city;
--19. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.  
SELECT  a.ord_no,a.purch_amt,
b.cust_name,b.city 
FROM orders a,customer b 
WHERE a.customer_id=b.customer_id 
AND a.purch_amt BETWEEN 500 AND 2000;
--20. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.   
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id;
--21. From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.   
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.commission 
FROM customer a 
INNER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE b.commission>.12;
--22. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company.
--Return Customer Name, customer city, Salesman, salesman city, commission. 
SELECT a.cust_name AS "Customer Name", 
a.city, b.name AS "Salesman", b.city,b.commission  
FROM customer a  
INNER JOIN salesman b  
ON a.salesman_id=b.salesman_id 
WHERE b.commission>.12 
AND a.city<>b.city;
--23. From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.   
SELECT a.ord_no,a.ord_date,a.purch_amt,
b.cust_name AS "Customer Name", b.grade, 
c.name AS "Salesman", c.commission 
FROM orders a 
INNER JOIN customer b 
ON a.customer_id=b.customer_id 
INNER JOIN salesman c 
ON a.salesman_id=c.salesman_id;
--24. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned.   


SELECT cust_name,(name)SALESPERSON,commission,Customer.city,Orders.*   from Orders
inner join Customer on (Orders.customer_id=Customer.customer_id)
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id);

--25. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id. 
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman",b.city 
FROM customer a 
LEFT JOIN salesman b 
ON a.salesman_id=b.salesman_id 
order by a.customer_id;
--26. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.  
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", b.city 
FROM customer a 
LEFT OUTER JOIN salesman b 
ON a.salesman_id=b.salesman_id 
WHERE a.grade<300 
ORDER BY a.customer_id;
--27. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order 
--date to determine whether any of the existing customers have placed an order or not.    
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount" 
FROM customer a 
LEFT OUTER JOIN orders b 
ON a.customer_id=b.customer_id 
order by b.ord_date;
--28. SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of 
--the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.   
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount", 
c.name,c.commission 
FROM customer a 
LEFT OUTER JOIN orders b 
ON a.customer_id=b.customer_id 
LEFT OUTER JOIN salesman c 
ON c.salesman_id=b.salesman_id;
--29. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers. 
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", b.city 
FROM customer a 
RIGHT OUTER JOIN salesman b 
ON b.salesman_id=a.salesman_id 
ORDER BY b.salesman_id;
--30. From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. 
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", 
c.ord_no, c.ord_date, c.purch_amt 
FROM customer a 
RIGHT OUTER JOIN salesman b 
ON b.salesman_id=a.salesman_id 
RIGHT OUTER JOIN orders c 
ON c.customer_id=a.customer_id;
--31. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have 
--placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.   
SELECT a.cust_name,a.city,a.grade, 
b.name AS "Salesman", 
c.ord_no, c.ord_date, c.purch_amt 
FROM customer a 
RIGHT OUTER JOIN salesman b 
ON b.salesman_id=a.salesman_id 
LEFT OUTER JOIN orders c 
ON c.customer_id=a.customer_id 
WHERE c.purch_amt>=2000 
AND a.grade IS NOT NULL;
--32.For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report 
--containing the customer name, city, order number, order date, and purchase amount   
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount" 
FROM customer a 
LEFT OUTER JOIN orders b 
ON a.customer_id=b.customer_id;
--33. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have 
--a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade. 
SELECT a.cust_name,a.city, b.ord_no,
b.ord_date,b.purch_amt AS "Order Amount" 
FROM customer a 
FULL OUTER JOIN orders b 
ON a.customer_id=b.customer_id 
WHERE a.grade IS NOT NULL;
--34. Write a SQL query to combine each row of the salesman table with each row of the customer table. 
SELECT * 
FROM salesman a 
CROSS JOIN customer b;
--35. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
SELECT *
FROM customer
cross JOIN Salesman
where Customer.city = Salesman.city
order by Customer.city;



--36. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.
SELECT *
FROM customer
cross JOIN Salesman
where  Salesman.city is not null and grade is not null
order by Customer.city



--37. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those 
--salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.   
SELECT * 
FROM salesman a 
CROSS JOIN customer b 
WHERE a.city IS NOT NULL 
AND b.grade IS NOT NULL 
AND  a.city<>b.city;
--38. From the following tables write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id. 
SELECT *
   FROM item_mast 
   INNER JOIN company_mast
   ON item_mast.pro_com= company_mast.com_id;
--39. Write a SQL query to display the item name, price, and company name of all the products. 
SELECT item_mast.pro_name, pro_price, company_mast.com_name
   FROM item_mast 
     INNER JOIN company_mast
        ON item_mast.pro_com = company_mast.com_id; 
--40. From the following tables write a SQL query to calculate the average price of items of each company. Return average value and company name.  
SELECT AVG(pro_price) AS AVG, company_mast.com_name
   FROM item_mast INNER 
     JOIN company_mast
        ON item_mast.pro_com= company_mast.com_id
           GROUP BY company_mast.com_name; 
--41. From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name. 
 SELECT AVG(pro_price) AS average, company_mast.com_name
   FROM item_mast INNER JOIN company_mast
   ON item_mast.pro_com= company_mast.com_id
   GROUP BY company_mast.com_name
   HAVING AVG(pro_price) >= 350;
--42. From the following tables write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name. 
SELECT P.pro_name AS "Product Name", 
       P.pro_price AS "Price", 
       C.com_name AS "Company"
   FROM item_mast P, company_mast C
   WHERE P.pro_com = C.com_id
     AND P.pro_price =
     (
       SELECT MAX(P.pro_price)
         FROM item_mast P
         WHERE P.pro_com = C.com_id
     );
--43. From the following tables write a SQL query to display all the data of employees including their department.
select EMP_DETAILS.*,DPT_NAME,DPT_ALLOTMENT from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE);
--44. From the following tables write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount.
select EMP_FNAME,EMP_LNAME,DPT_NAME,DPT_ALLOTMENT from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE);
--45. From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.
select EMP_FNAME,EMP_LNAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
where DPT_ALLOTMENT>50000;
--46. From the following tables write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name.
select DPT_NAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
group by DPT_NAME
having count(EMP_FNAME)>2;
--47. From the following tables write a SQL query to find the names of departments where the department name has two letters. Return dpt_name.
select DPT_NAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
where DPT_NAME like '__'
group by DPT_NAME;
--48. From the following tables write a SQL query to find the names of customers where the customer name ends with ‘n’. Return cust_name.
select cust_name from Customer where cust_name like '%n';
--49. From the following tables write a SQL query to find the names of departments, cutomer id and order id.
SELECT DEPARTMENT_NAME,cust_name, ord_no
FROM customer
JOIN orders
ON Customer.customer_id=Orders.customer_id
join Locations on Customer.city =Locations.CITY
join departments on Locations.LOCATION_ID = departments.LOCATION_ID
--50. From the following tables write a SQL query to find cutomer name and order id where the order was purchased on October.
	
SELECT cust_name, ord_no
FROM customer
JOIN orders
ON Customer.customer_id=Orders.customer_id
where month(ord_date)= 10;	
--or
SELECT cust_name, ord_no
FROM customer
 JOIN orders
ON Customer.customer_id=Orders.customer_id
where format(ord_date,'MMMM')= 'October';