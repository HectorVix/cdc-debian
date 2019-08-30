-- Roles
INSERT INTO `cdc`.`rol`
(`rol_id`,`nombre`)
VALUES
(1,'Administrador'),
(2,'Flora'),
(3,'Fauna'),
(7,'Usuario');

-- Usuarios
INSERT INTO `cdc`.`usuario`
(`usuario_id`,`Rol_rol_id`,`nombre`,`apellido`,`usuario`,`sexo`,`fechaNacimiento`,`email`,`contrasena`)
VALUES
(1,1,'Héctor David','Vix de León','HVIX',1,'1978-02-03','vix.hector@gmail.com','1234'),
(2,1,'Harim','LIC','Cruz',1,'1975-08-25','iquibalam246@gmail.com','@1975WM113#'),
(3,1,'Rebeca','LIC','Rebe',0,'1978-02-03','rebeca@gmail.com','1234');

-- -------------------RANGOS
-- -------------------RANGO GLOBAL
INSERT INTO `cdc`.`rangog`
(`rangog_id`,`rangog`,`USUARIO_usuario_id`)
VALUES
(1,'G1',1),
(2,'G2',1),
(3,'G3',1),
(4,'G4',1),
(5,'G5',1),
(6,'GU',1),
(7,'GH',1),
(8,'GX',1);

-- -----------RANGO NACIONAL
INSERT INTO `cdc`.`rangon`
(`rangon_id`,`rangon`,`USUARIO_usuario_id`)
VALUES
(1,'N1',1),
(2,'N2',1),
(3,'N3',1),
(4,'N4',1),
(5,'N5',1),
(6,'NA',1),
(7,'NE',1),
(8,'NH',1),
(9,'NN',1),
(10,'NR',1),
(11,'NRF',1),
(12,'NU',1),
(13,'NX',1);

-- -----------RANGO SUBNACIONAL
INSERT INTO `cdc`.`rangos`
(`rangos_id`,`rangos`,`USUARIO_usuario_id`)
VALUES
(1,'S1',1),
(2,'S2',1),
(3,'S3',1),
(4,'S4',1),
(5,'S5',1),
(6,'SA',1),
(7,'SE',1),
(8,'SH',1),
(9,'SN',1),
(10,'SR',1),
(11,'SRF',1),
(12,'SU',1),
(13,'SX',1);

-- -------------CATALOGO FENELOGIA
INSERT INTO `cdc`.`fenelogia`
(`id_fenelogia`,`valor`,`fenelogia`,`USUARIO_usuario_id`)
VALUES 
(1,'A','Apertura de la Yema',1),                
(2,'AP','Aparecimiento de Pétalos',1),
(3,'AS','Aparecimeinto de Sépalos',1),
(4,'BF','Brote Frorales',1),
(5,'BFL','Brote Foliares',1),
(6,'BFR','Brote Frutales',1),
(7,'BL','Brotes Laterales',1),
(8,'C','Caducifolias',1),
(9,'CF','Crecimiento del Fruto',1),
(10,'CP','Caída de Pétalos',1),
(11,'CS','Coloración Semillas',1),
(12,'F','Fruto',1),
(13,'FA','Flor Abierta',1),
(14,'FL','Floración',1),
(15,'FR','Fructificación',1),
(16,'G','Germinación',1),
(17,'M','Maduración del Fruto',1),
(18,'R','Retoños',1),
(19,'S','Senecencia',1),
(20,'Y','Yemas Floriales',1);

-- --------CATALOGO NACIÓN
INSERT INTO `cdc`.`nacion`
(`nacion_id`,`codigo`,`nombre`,`USUARIO_usuario_id`)
VALUES
-- (1,'CA','Canada',1),
-- (2,'US','Estados Unidos',1),
-- (3,'MX','Mexico',1),
(4,'GT','Guatemala',1);
-- (5,'BZ','Belize',1),
-- (6,'CU','Cuba',1),
-- (7,'HN','Honduras',1),
-- (8,'SV','El Salvador',1),
-- (9,'NI','Nicaragua',1),
-- (10,'CR','Costa Rica',1),
-- (11,'PA','Panama',1);

-- --------CATALOGO SUBNACIÓN
INSERT INTO `cdc`.`subnacion`
(`subnacion_id`,`codigo`,`nombre`,`NACION_nacion_id`)
VALUES
(1,01,'Guatemala',4),
(2,02,'El Progreso',4),
(3,03,'Sacatepequez',4),
(4,04,'Chimaltenango',4),
(5,05,'Escuintla',4),
(6,06,'Santa Rosa',4),
(7,07,'Solola',4),
(8,08,'Totonicapan',4),
(9,09,'Quetzaltenango',4),
(10,10,'Suchitepequez',4),
(11,11,'Retalhuleu',4),
(12,12,'San Marcos',4),
(13,13,'Huehuetenango',4),
(14,14,'El Quiche',4),
(15,15,'Baja Verapaz',4),
(16,16,'Alta Verapaz',4),
(17,17,'El Peten',4),
(18,18,'Izabal',4),
(19,19,'Zacapa',4),
(20,20,'Chiquimula',4),
(21,21,'Jalapa',4),
(22,22,'Jutiapa',4);

-- ------CATALOGO MUNICIPIO
-- ------01-GUATEMALA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Guatemala',1),
(02,'Santa Catarina Pinula',1),
(03,'San Jose Pinula',1),
(04,'San Jose Del Golfo',1),
(05,'Palencia',1),
(06,'Chinautla',1),
(07,'San Pedro Ayampuc',1),
(08,'Mixco',1),
(09,'San Pedro Sacatepequez',1),
(10,'San Juan Sacatepequez',1),
(11,'San Raymundo',1),
(12,'Chuarrancho',1),
(13,'Fraijanes',1),
(14,'Amatitlan',1),
(15,'Villa Nueva',1),
(16,'Villa Canales',1),
(17,'San Miguel Petapa',1);

-- ------02-EL PROGRESO
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Guastatoya',2),
(02,'Morazan',2),
(03,'San Agustin Acasaguastlan',2),
(04,'San Cristobal Acasaguastlan',2),
(05,'El Jicaro',2),
(06,'Sansare',2),
(07,'Sanarate',2),
(08,'San Antonio La Paz',2);

-- ------03-SACATEPEQUEZ
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Antigua',3),
(02,'Jocotenango',3),
(03,'Pastores',3),
(04,'Sumpango',3),
(05,'Santo Domingo Xenacoj',3),
(06,'Santiago Sacatepequez',3),
(07,'San Barolome Milpas Altas',3),
(08,'San Lucas Sacatepequez',3),
(09,'Santa Lucia Milpas Altas',3),
(10,'Magdalena Milpas Altas',3),
(11,'Santa Maria De Jesus',3),
(12,'Ciudad Vieja',3),
(13,'San Miguel Duenas',3),
(14,'Alotenango',3),
(15,'San Antonio Aguas Calientes',3),
(16,'Santa Catarina Barahona',3);

-- ------04-CHIMALTENANGO
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Chimaltenango',4),
(02,'San Jose Poaquil',4),
(03,'San Martin Jilotepeque',4),
(04,'San Juan Comalapa',4),
(05,'Santa Apolonia',4),
(06,'Tecpan Guatemala',4),
(07,'Patzun',4),
(08,'San Miguel Pochuta',4),
(09,'Patzicia',4),
(10,'Santa Cruz Balanya',4),
(11,'Acatenango',4),
(12,'San Pedro Yepocapa',4),
(13,'San Andres Itzapa',4),
(14,'Paramos',4),
(15,'Zaragoza',4),
(16,'El Tejar',4);

-- ------05-ESCUINTLA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Escuintla',5),
(02,'Santa Lucia Cotzumalguapa',5),
(03,'La Democracia',5),
(04,'Siquinala',5),
(05,'Masagua',5),
(06,'Tiquisate',5),
(07,'La Gomera',5),
(08,'Guanagazapa',5),
(09,'San Jose',5),
(10,'Iztapa',5),
(11,'Palin',5),
(12,'San Vicente Pacaya',5),
(13,'Nueva Concepcion',5),
(14,'Sipacate',5);

-- ------06-SANTA ROSA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Cuilapa',6),
(02,'Barberena',6),
(03,'Santa Rosa De Lima',6),
(04,'Casillas',6),
(05,'San Rafael De Las Flores',6),
(06,'Oratorio',6),
(07,'San Juan Tecuaco',6),
(08,'Chiquimulia',6),
(09,'Taxisco',6),
(10,'Santa Maria Ixhuatan',6),
(11,'Guazacapan',6),
(12,'Santa Cruz Naranjo',6),
(13,'Pueblo Nuevo Viñas',6),
(14,'Nueva Santa Rosa',6);

-- ------07-SOLOLA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Solola',7),
(02,'San Jose Chacaya',7),
(03,'Santa Maria Visitación',7),
(04,'Santa Lucia Utatlan',7),
(05,'Nahuala',7),
(06,'Santa Catarina Ixhuatan',7),
(07,'Santa Clara La Laguna',7),
(08,'Concepción',7),
(09,'San Andres Semetabaj',7),
(10,'Panajachel',7),
(11,'Santa Catarina Palopo',7),
(12,'Santa Antonio Palopo',7),
(13,'San Lucas Toliman',7),
(14,'Santa Cruz La Laguna',7),
(15,'San Pablo La Laguna',7),
(16,'San Marcos La Laguna',7),
(17,'San Juan La Laguna',7),
(18,'San Pedro La Laguna',7),
(19,'Santiago Atitlan',7);

-- ------08-TOTONICAPAN
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Totonicapan',8),
(02,'San Cristobal Totonicapan',8),
(03,'San Francisco El Alto',8),
(04,'San Andres Xecul',8),
(05,'Momostenango',8),
(06,'Santa Maria Chiquimula',8),
(07,'Santa Lucia La Reforma',8),
(08,'San Bartolo Aguas Calientes',8);

-- ------09-QUETZALTENANGO
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Quetzaltenango',9),
(02,'Salcaja',9),
(03,'Olintepeque',9),
(04,'San Carlos Sija',9),
(05,'Sibilia',9),
(06,'Cabrican',9),
(07,'Cajola',9),
(08,'San Miguel Siguila',9),
(09,'San Juan Ostuncalco',9),
(10,'San Mateo',9),
(11,'Concepción Chiquirichapa',9),
(12,'San Martin Sacatepequez',9),
(13,'Almolonga',9),
(14,'Cantel',9),
(15,'Huitan',9),
(16,'Zunil',9),
(17,'Colomba Costa Cuca',9),
(18,'San Francisco La Union',9),
(19,'El Palmar',9),
(20,'Coatepeque',9),
(21,'Genova Costa Cuca',9),
(22,'Flores Costa Cuca',9),
(23,'La Esperanza',9),
(24,'Palestina De Los Altos',9);

-- ------10-SUCHITEPEQUEZ
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Mazatenango',10),
(02,'Cuyotenango',10),
(03,'San Francisco Zapotitlan',10),
(04,'San Bernardino',10),
(05,'San Jose El Idolo',10),
(06,'Santo Domingo Suchitepequez',10),
(07,'San Lorenzo',10),
(08,'Samayac',10),
(09,'San Pablo Jocopilas',10),
(10,'San Antonio Suchitepequez',10),
(11,'San Miguel Panam',10),
(12,'San Gabriel',10),
(13,'Chicacao',10),
(14,'Patulul',10),
(15,'Santa Barbara',10),
(16,'San Juan Bautista',10),
(17,'Santo Tomas La Union',10),
(18,'Zunilito',10),
(19,'Pueblo Nuevo',10),
(20,'Rio Bravo',10),
(21,'San Jóse La Maquina',10);

-- ------11-RETALHULEU
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Retalhuleu',11),
(02,'San Sebastian',11),
(03,'Santa Cruz Mulua',11),
(04,'San Martin Zapotitlan',11),
(05,'San Felipe',11),
(06,'San Andres Villa Seca',11),
(07,'Champerico',11),
(08,'Nuevo San Carlos',11),
(09,'El Asintal',11);

-- ------12-SAN MARCOS
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'San Marcos',12),
(02,'San Pedro Sacatepequez',12),
(03,'San Antonio Sacatepequez',12),
(04,'Comitancillo',12),
(05,'San Miguel Ixtahuacan',12),
(06,'Concepción Tatuapa',12),
(07,'Tacana',12),
(08,'Sibinal',12),
(09,'Tajumulco',12),
(10,'Tejutla',12),
(11,'San Rafael Pie De La Cuesta',12),
(12,'Nuevo Progreso',12),
(13,'El tumbador',12),
(14,'San Jose El Rodeo',12),
(15,'Malacatan',12),
(16,'Catarina',12),
(17,'Ayutla(Tecun Uman)',12),
(18,'Ocos',12),
(19,'San Pablo',12),
(20,'El Quetzal',12),
(21,'La Reforma',12),
(22,'Pajapita',12),
(23,'Ixchiguan',12),
(24,'San Jose Ojetenan',12),
(25,'San Cristobal Cucho',12),
(26,'Sipacapa',12),
(27,'Esquipulas Palo Gordo',12),
(28,'Rio Blanco',12),
(29,'San Lorenzo',12),
(30,'La Blanca',12);

-- ------13-HUEHUETENANGO
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Huehuetenango',13),
(02,'Chiantla',13),
(03,'Malacatancito',13),
(04,'Cuilco',13),
(05,'Nenton',13),
(06,'San Pedro Necta',13),
(07,'Jacaltenango',13),
(08,'San Pedro Soloma',13),
(09,'San Ildefonso Ixtahuacan',13),
(10,'Santa Barbara',13),
(11,'La Libertad',13),
(12,'La Democracia',13),
(13,'San Miguel Acatan',13),
(14,'San Rafael La Independencia',13),
(15,'Todos Santos Cuchumatam',13),
(16,'San Juan Atitan',13),
(17,'Santa Eulalia',13),
(18,'San Mateo Ixtatan',13),
(19,'Colotenango',13),
(20,'San Sebastian Huehuetenango',13),
(21,'Tectitan',13),
(22,'Concepción Huista',13),
(23,'San Juan Ixcoy',13),
(24,'San Antonio Huista',13),
(25,'San Sebastian Coatan',13),
(26,'Santa Cruz Barillas',13),
(27,'Aguacatan',13),
(28,'San Rafael Petzal',13),
(29,'San Gaspar Ixchil',13),
(30,'Santiago Chimaltenango',13),
(31,'Santa Ana Huista',13),
(32,'Unión Cantinil',13),
(33,'Petatán',13);

-- ------14-QUICHE
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Santa Cruz Del Quiche',14),
(02,'Chiche',14),
(03,'Chiniche',14),
(04,'Zacualpa',14),
(05,'Chajul',14),
(06,'Sto. Tomas Chichicastenango',14),
(07,'Patzite',14),
(08,'San Antonio Ilotenango',14),
(09,'San Pedro Jocopilas',14),
(10,'Cunen',14),
(11,'San Juan Cotzal',14),
(12,'Joyabaj',14),
(13,'Nebaj',14),
(14,'San Andres Sajcabaja',14),
(15,'San Miguel Uspantán',14),
(16,'Sacapulas',14),
(17,'San Bartolome Jocotenango',14),
(18,'Canillá',14),
(19,'Chicaman',14),
(20,'Ixcan',14),
(21,'Pachalun',14);
-- (21,'Playa Grande');

-- ------15-BAJA VERAPAZ
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Salama',15),
(02,'San Miguel Chicaj',15),
(03,'Rabinal',15),
(04,'Cubulco',15),
(05,'Granados',15),
(06,'Santa Cruz El Choj',15),
(07,'San Jeronimo',15),
(08,'Purulha',15);

-- ------16-ALTA VERAPAZ
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Coban',16),
(02,'Santa Cruz Verapaz',16),
(03,'San Cristobal Verapaz',16),
(04,'Tactic',16),
(05,'Tamahu',16),
(06,'San Miguel Tucuru',16),
(07,'Panzos',16),
(08,'Senahu',16),
(09,'San Pedro Carcha',16),
(10,'San Juan Chamelco',16),
(11,'Lanquin',16),
(12,'Santa Maria Cahabon',16),
(13,'Chisec',16),
(14,'Chahal',16),
(15,'Fray Bartolome De Las Casas',16),
(16,'La Tinta',16),
(17,'Raxruha',16);

-- ------17-PETEN
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Flores',17),
(02,'San Jose',17),
(03,'San Benito',17),
(04,'San Andres',17),
(05,'La Libertad',17),
(06,'San Francisco',17),
(07,'Santa Ana',17),
(08,'Dolores',17),
(09,'San Luis',17),
(10,'Sayaxche',17),
(11,'Melchor De Mencos',17),
(12,'Poptun',17),
(13,'El Chal',17),
(14,'Las Cruces',17);

-- ------18-IZABAL
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Puerto Barrios',18),
(02,'Liviston',18),
(03,'El Estor',18),
(04,'Morales',18),
(05,'Los Amates',18);

-- ------19-ZACAPA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Zacapa',19),
(02,'Estanzuela',19),
(03,'Rio Hondo',19),
(04,'Gualan',19),
(05,'Teculutan',19),
(06,'Usumatlan',19),
(07,'Cabanas',19),
(08,'San Diego',19),
(09,'La Union',19),
(10,'Huite',19),
(11,'San Jorge',19);

-- ------20-CHIQUIMULA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Chiquimula',20),
(02,'San Jose La Arada',20),
(03,'San Juan La Ermita',20),
(04,'Jocotan',20),
(05,'Camotan',20),
(06,'Olopa',20),
(07,'Esquipulas',20),
(08,'Concepción Las Minas',20),
(09,'Quetzaltepeque',20),
(10,'San Jacinto',20),
(11,'Ipala',20);

-- ------21-JALAPA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Jalapa',21),
(02,'San Pedro Pinula',21),
(03,'San Luis Jilotepeque',21),
(04,'San Miguel Chaparron',21),
(05,'San Carlos Alzatate',21),
(06,'Monjas',21),
(07,'Mataquescuintla',21);

-- ------22-JUTIAPA
INSERT INTO `cdc`.`municipio`
(`codigo`,`nombre`,`SUBNACION_subnacion_id`)
VALUES
(01,'Jutiapa',22),
(02,'El Progreso',22),
(03,'Santa Catarina Mita',22),
(04,'Agua Blanca',22),
(05,'Asunción Mita',22),
(06,'Yupiltepeque',22),
(07,'Atescatempa',22),
(08,'Jerez',22),
(09,'El Adelanto',22),
(10,'Zapotitlan',22),
(11,'Comapa',22),
(12,'Jalpatagua',22),
(13,'Conguaco',22),
(14,'Moyuta',22),
(15,'Pasaco',22),
(16,'San Jose Acatempa',22),
(17,'Quesada',22);