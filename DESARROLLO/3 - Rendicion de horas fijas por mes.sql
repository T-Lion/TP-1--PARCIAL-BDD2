/*procedimiento para rendir horas fijas por mes de proyecto*/
delimiter $$
CREATE PROCEDURE rendicion_horas_fijas_por_mes(id_participante INT, id_proyecto INT, carga_horaria_mes INT)
	
	BEGIN	
		
		DECLARE contador INT;	
		DECLARE cantidad_dias_mes_actual INT;	
		DECLARE fecha_a_insertar CHAR(10);	
		SET cantidad_dias_mes_actual = DAY(LAST_DAY(CURRENT_TIMESTAMP));	
		SET contador = 0;
		
			while contador < cantidad_dias_mes_actual  DO 
				 	SET contador = contador + 1; 
		
						if DAYOFWEEK(CONCAT(YEAR(CURRENT_TIMESTAMP), "-" , MONTH(CURRENT_TIMESTAMP), "-", contador)) > 1 AND DAYOFWEEK(CONCAT(YEAR(CURRENT_TIMESTAMP), "-" , MONTH(CURRENT_TIMESTAMP), "-", contador)) < 7 then	
							SET fecha_a_insertar = CONCAT(YEAR(CURRENT_TIMESTAMP), "-" , MONTH(CURRENT_TIMESTAMP), "-", contador);	
							
							INSERT INTO asignacion_hs (id_part, id_proy, cant_horas, fecha) 
					   	VALUES (id_participante, id_proyecto, carga_horaria_mes, fecha_a_insertar);
				   	
			   		END if;
			   	
			END while;
			
	END;
$$