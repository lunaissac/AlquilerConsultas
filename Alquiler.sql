--PROPIETARIO

--Daniel Quispe 
--LISTADO DE LAS VIVIENDAS CON SU RESPECTIVO ESTADO Y SI EST�N DISPONIBLES. 
select vivienda.CODVIV, vivienda.DESCVIV,ESTADO_VIVIENDA.DESCESTAVIV as vi  from  vivienda 
inner join ESTADO_VIVIENDA on ESTADO_VIVIENDA.CODESTVIV = vivienda.CODESTVIV WHERE  ESTADO_VIVIENDA.DESCESTAVIV like 'activo'

--LISTADO DE LOS INQUILINOS QUE TIENEN M�S CASAS ALQUILADAS. 
select DISTINCT (codalq), codviv
from detalle_alquiler
where codalq = (select max(codalq) from detalle_alquiler )

--	RESULTADO DE LA GANANCIA DE LOS DEPARTAMENTOS RENTADOS POR MES O A�O.

--	LISTADO DE LOS DEPARTAMENTOS QUE SE VENCE LA MENSUALIDAD. 

--	LISTA INQUILINOS QUE FALTAN PAGAR. 
select * from detalle_alquiler where costdetalq is null

--	CU�LES SON LOS DEPARTAMENTOS QUE SE RENTAN CON M�S FRECUENCIA Y CU�LES NO. 
select * from detalle_alquiler
select distinct(codviv)as departamento from detalle_alquiler
SELECT EOMONTH(02/12/2018) 


