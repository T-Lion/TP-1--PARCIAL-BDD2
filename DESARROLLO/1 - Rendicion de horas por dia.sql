/*procedimiento para rendir horas por dia*/
delimiter $$
CREATE PROCEDURE rendicion_horas_por_dia (partic INT ,proyect INT ,horas INT,fech DATE)

BEGIN
	
	INSERT INTO asignacion_hs (id_part,id_proy,cant_horas,fecha) 
	VALUES (partic,proyect,horas,fech);

END;
$$