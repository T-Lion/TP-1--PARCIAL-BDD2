/*llamado al procedimiento rendicion de horas por dia*/
CALL rendicion_horas_por_dia (3,1,2,'2021-05-13');

SELECT * FROM asignacion_hs;

DELETE FROM asignacion_hs;

DROP PROCEDURE rendicion_horas_por_dia;

/*llamado al procedimiento rendicion de horas por semana*/
CALL rendicion_de_horas_fijas_por_semana (1,3,8,'2021-04-26');

SELECT * FROM  asignacion_hs;

DELETE FROM asignacion_hs;

DROP PROCEDURE rendicion_de_horas_fijas_por_semana;

/*llamado al procedimiento rendicion de horas por mes*/
CALL rendicion_horas_fijas_por_mes (2,3,10);

SELECT * FROM asignacion_hs; 

USE tp_1er_parcial;

DELETE FROM asignacion_hs;

DROP PROCEDURE rendicion_horas_fijas_por_mes;

/*llamado al procedimiento de liquidacion horas por mes*/
CALL liquidacion_mesual;

SELECT id_ren,id_part,id_proy,cant_hs_totales,fecha FROM liquidacion_hs;

DELETE FROM liquidacion_hs;

DROP PROCEDURE liquidacion_mesual;