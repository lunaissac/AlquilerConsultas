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
select sum(costdetalq) from detalle_alquiler where to_char(fecfindetalq,'YYYY') = '2018'
select sum(costdetalq) from detalle_alquiler where to_char(fecfindetalq,'MM') = '05'
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

--Juan Valerio 
--	LISTA DE CASAS QUE ESTÁN OCUPADOS DE FECHA A TAL FECHA. 

--	LISTADO DE CANTIDAD DE INQUILINOS QUE FALTAN PAGAR POR LA VIVIENDA.
select count(codalq)as faltantes  from detalle_alquiler where costdetalq is null

--	LISTADO DE INQUILINOS QUE SON EXTRANJEROS Y NACIONAL EN LAS CASAS QUE ALQUILO.(TIPO DOCUMENTO) 
select * from perosna
--	LISTADO DE CASAS DEPENDIENDO DE LA MENSUALIDAD. 
select distinct( costdetalq) from detalle_alquiler 

--	LISTADO DE CASAS A MAYOR COSTOS POR ESTACIONES. 
SELECT MAX(costdetAlq)AS Primavera FROM detalle_alquiler WHERE fecfindetalq BETWEEN '21/09/2018' AND '21/12/2018'


--	LISTAR LA CANTIDAD DE INQUILINOS Y SUS FAMILIARES POR CASA. 
SELECT codviv ,COUNT(codalq) AS inquilinos FROM detalle_alquiler GROUP BY codviv



--Junior Rejas 
--Información general de los Inquilinos y sus familiares
slect * from persona



--Issac Luna : 
--	Los precios de las viviendas  
select * from vivienda
--	Viviendas mas populares,recomendadas,etc 
select max(distinct(codalq))AS popular from detalle_alquiler
--	Servicios que ofrece cada viviendas
select * from vivienda
--	Tiempo de utilidad de las viviendas y su fecha de mantenimiento 
select * from vivienda
--	Inquilinos puntuales al pagar 
select * from detalle_alquiler where costdetalq is not null
--	Quejas o reclamos de los inquilinos 
select * from detalle_alqui



--Product Owner: Inquilino 
--José Cumba 
--	Tener fotos del ambiente alrededor y interior de la vivienda a alquilar. 
select * from vivienda
--	Listado de las ubicaciones de cada vivienda para que el inquilino elija el lugar que se sienta más agusto.
select descviv, UBIGEO.DISTUBI  ||  UBIGEO.PROVUBI || UBIGEO.DPTOUBI AS UBIGEO from vivienda
inner join UBIGEO on UBIGEO.CODUBI = VIVIENDA.CODUBI
--	Saber el precio de cada vivienda a alquilar. 
select * from vivienda
--	Listar las características  de la vivienda (Si cuenta con jardín, piscina u otros.). 
select * from vivienda
--	Saber qué vivienda tiene ofertas. 
SELECT min(costdetAlq)AS Primavera FROM detalle_alquiler WHERE fecfindetalq BETWEEN '21/09/2018' AND '21/12/2018'



---Mark Huaman: 
--Búsqueda rápida y reservaciones de habitaciones,departamentos,casa además de ver si estas están habilitadas. 
select vivienda.CODVIV, vivienda.DESCVIV,ESTADO_VIVIENDA.DESCESTAVIV as vi  from  vivienda 
inner join ESTADO_VIVIENDA on ESTADO_VIVIENDA.CODESTVIV = vivienda.CODESTVIV WHERE  ESTADO_VIVIENDA.DESCESTAVIV like 'activo'
-- Tipo de pago(deposito,efectivo). 
select * from detalle_lquiler
--Servicios 	propios 	del 	alquiler 	en 	caso de(departamentos). 
select * from detalle_lquiler
--Consultas en Línea sobre las casas y/o Departamentos(Prospecto). 
select * from detalle_lquiler

	 
--Alexander Gutiérrez 
--	Cuantos tipos de departamentos hay(duplex,familiar,soltero,etc) 
select descviv,tipo_vivienda.desctipviv from vivienda
inner join tipo_vivienda on  tipo_vivienda.codtipviv = vivienda.codtipviv

--	Ver si el departamento  cuenta además con un servicio extra(internet,netflix,cable) 
select * from vivienda
--	Ver las promociones por temporada de los departamentos (precios, combos,habitaciones dobles) 
SELECT min(costdetAlq)AS Primavera FROM detalle_alquiler WHERE fecfindetalq BETWEEN '21/09/2018' AND '21/12/2018'

-- Ver si el departamento esta disponible y si este está ocupado cual es el tiempo en que este departamento se va a desocupar 
select vivienda.CODVIV, vivienda.DESCVIV,ESTADO_VIVIENDA.DESCESTAVIV as vi  from  vivienda 
inner join ESTADO_VIVIENDA on ESTADO_VIVIENDA.CODESTVIV = vivienda.CODESTVIV WHERE  ESTADO_VIVIENDA.DESCESTAVIV like 'activo'


--Andrés López 

--	Saber las fechas de las mensualidades pendientes.
select * from detalle_alquiler where costdetalq is null

--	Estar informado sobre posibles alquileres con promoción que se ajusten a las necesidades personales. 
SELECT MIN(costdetAlq)AS  FROM detalle_alquiler 


--Joseth Castilla 
 
--MOSTRAR INFORMACIÓN DE LOS TIPOS DE VIVIENDAS  
select descviv,tipo_vivienda.desctipviv from vivienda
inner join tipo_vivienda on  tipo_vivienda.codtipviv = vivienda.codtipviv

 
--SABER EN QUÉ LUGAR ESTÁ UBICADO EL DEPARTAMENTO O VIVIENDA 
select descviv, UBIGEO.DISTUBI  ||  UBIGEO.PROVUBI || UBIGEO.DPTOUBI AS UBIGEO from vivienda
inner join UBIGEO on UBIGEO.CODUBI = VIVIENDA.CODUBI
-- MUESTRE MENSAJES DE CUÁNTOS DÍAS LE FALTA PARA CANCELAR SU CUOTA MENSUAL 


