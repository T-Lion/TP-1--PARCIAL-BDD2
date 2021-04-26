/*procedimiento para rendir horas fijas por semana de proyecto*/
delimiter $$
CREATE PROCEDURE rendicion_de_horas_fijas_por_semana (id_participante INT,id_proyecto INT,dia1 INT,fecha DATE)

	BEGIN
	
		DECLARE semana INT;
		SET semana = 0;
		
			while semana < 5 do
				
			   INSERT INTO asignacion_hs (id_part,id_proy,cant_horas,fecha) VALUES (id_participante,id_proyecto,dia1,fecha);
				SET fecha = DATE_ADD(fecha,INTERVAL 1 DAY);
				SET semana = semana + 1;
		
			END while;
	END;
$$