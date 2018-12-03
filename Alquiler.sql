--PROPIETARIO

--Daniel Quispe 
--LISTADO DE LAS VIVIENDAS CON SU RESPECTIVO ESTADO Y SI ESTÁN DISPONIBLES. 
select vivienda.CODVIV, vivienda.DESCVIV,ESTADO_VIVIENDA.DESCESTAVIV as vi  from  vivienda 
inner join ESTADO_VIVIENDA on ESTADO_VIVIENDA.CODESTVIV = vivienda.CODESTVIV WHERE  ESTADO_VIVIENDA.DESCESTAVIV like 'activo'

--LISTADO DE LOS INQUILINOS QUE TIENEN MÁS CASAS ALQUILADAS. 
select DISTINCT (codalq), codviv
from detalle_alquiler
where codalq = (select max(codalq) from detalle_alquiler )

--	RESULTADO DE LA GANANCIA DE LOS DEPARTAMENTOS RENTADOS POR MES O AÑO.

--	LISTADO DE LOS DEPARTAMENTOS QUE SE VENCE LA MENSUALIDAD. 

--	LISTA INQUILINOS QUE FALTAN PAGAR. 
select * from detalle_alquiler where costdetalq is null

--	CUÁLES SON LOS DEPARTAMENTOS QUE SE RENTAN CON MÁS FRECUENCIA Y CUÁLES NO. 
select * from detalle_alquiler
select distinct(codviv)as departamento from detalle_alquiler
SELECT EOMONTH(02/12/2018) 

--Zecarlos Salcedo: 
 
--TOTAL DE PAGOS DE  INQUILINOS CUYA FECHA DE INICIO DE ALQUILER EMPIEZAN EN 2018 
select * from alquiler where  to_char(fecinalq,'yyyy') like '2018'
	 
--LISTAR LOS PAGOS DE ALQUILER DE VIVIENDA FECHA  POR  MES Y AÑO 
select sum(costdetalq) from detalle_alquiler where to_char(fecfindetalq,'YYYY') = '2018'
select sum(costdetalq) from detalle_alquiler where to_char(fecfindetalq,'MM') = '05'

--LISTAR INQUILINO POR VIVIENDA  Y UBIGEO 
select vivienda.descviv ,perosna.nomper,UBIGEO.DISTUBI  ||  UBIGEO.PROVUBI || UBIGEO.DPTOUBI AS UBIGEO from detalle_alquiler
inner join vivienda on vivienda.codviv=detalle_alquiler.codviv
inner join alquiler on alquiler.codalq=detalle_alquiler.codalq
inner join perosna on perosna.codper=alquiler.codper
inner join UBIGEO on UBIGEO.CODUBI = PEROSNA.CODUBI
--CUANTAS  VIVIENDA SE ALQUILARON EN EL 2018 + UBIGEO 
select fecinalq,PEROSNA.NOMPER as imquilino , UBIGEO.DISTUBI  ||  UBIGEO.PROVUBI || UBIGEO.DPTOUBI AS UBIGEO  from alquiler 
inner join PEROSNA on PEROSNA.CODPER = alquiler.CODPER
inner join UBIGEO on UBIGEO.CODUBI = PEROSNA.CODUBI
where  to_char(fecinalq,'yyyy') like '2018'


