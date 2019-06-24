-- Roles
INSERT INTO `cdc`.`rol`
(`rol_id`,
`nombre`)
VALUES
(1,'Administrador');


INSERT INTO `cdc`.`rol`
(`rol_id`,
`nombre`)
VALUES
(2,'Flora');

INSERT INTO `cdc`.`rol`
(`rol_id`,
`nombre`)
VALUES
(3,'Fauna');
INSERT INTO `cdc`.`rol`
(`rol_id`,
`nombre`)
VALUES
(7,'Usuario');

-- Usuarios

INSERT INTO `cdc`.`usuario`
(`usuario_id`,
`Rol_rol_id`,
`nombre`,
`apellido`,
`usuario`,
`sexo`,
`fechaNacimiento`,
`email`,
`contrasena`)
VALUES
(1,
1,
'Héctor David',
'Vix de León',
 'HVIX',
1,
'1978-02-03',
 'vix.hector@gmail.com',
1234);
INSERT INTO `cdc`.`usuario`
(`usuario_id`,
`Rol_rol_id`,
`nombre`,
`apellido`,
`usuario`,
`sexo`,
`fechaNacimiento`,
`email`,
`contrasena`)
VALUES
(2,
1,
'Rebeca',
'LIC',
 'Rl',
0,
'1978-02-03',
 'rebeca@gmail.com',
1234);

 --select * from elemento;
-- SELECT * FROM usuario;
-- SElect * FROM jerarquizacion;
-- SElect * FROM nacional;
-- SElect * FROM subnacional;
-- SElect * FROM rastreo;
-- select * from  localizacion


