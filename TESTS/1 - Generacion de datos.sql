-- inserto participantes
INSERT INTO participante (legajo,nombre,rol,valor_rol) 
VALUES 
	(1001,'Lionel Messi','Administrador General',100),
	(1002,'Diego Maradona','Desarrollador',80),
	(1003,'Juan Roman Riquelme' ,'DevOps',70),
	(1004,'Marcelo Gallardo','Tester',60),
	(1005,'Gabriel Batistuta','Proyect Manager',40);

-- inserto proyectos
INSERT INTO proyecto (nom_proy) 
VALUES 
	('ProyectMicrosoft'),
	('ProyectGoogle'),
	('ProyectAmazon');