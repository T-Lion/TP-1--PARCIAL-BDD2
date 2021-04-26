/*procedimiento para liquidar proyecto*/
delimiter $$
CREATE PROCEDURE liquidacion_mesual()

	BEGIN	
	
		INSERT INTO liquidacion_hs (id_part,id_proy,cant_hs_totales,fecha) 
		SELECT a.id_part,a.id_proy,SUM(a.cant_horas),CURRENT_TIMESTAMP
		FROM asignacion_hs a
		GROUP BY id_part,id_proy;
		
	END;
$$