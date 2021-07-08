--consultas
-- orden de las niñeras por su numero de servicios
select (niñera.nombre_niñera || ' ' || niñera.apellido_niñera) 
AS Niñera, count(servicio_niñera_id) as Numero_De_Servicios 
from cliente inner join servicio on id_cliente=servicio_cliente_id
inner join niñera on id_niñera=servicio_niñera_id 
group by niñera.nombre_niñera, niñera.apellido_niñera 
order by numero_de_servicios desc

--niños con alergias y sus tratamiento
select (niño.nombre_niño || ' ' || niño.apellido_niño) as Niño, 
(cliente.nombre_cliente || ' ' || cliente.apellido_cliente) as Cliente,
cliente.telefono_cliente as telefono, 
alergia.nombre_alergia as alergia, 
tratamiento.descripcion_tratamiento as tratamiento 

from cliente inner join niño on cliente_niño_id = cliente.id_cliente 
inner join alergia_niño on niño.id_niño = alergia_niño.alergia_niño_niño_id
inner join alergia on alergia.id_alergia = alergia_niño.alergia_niño_alergia_id 
inner join tratamiento on tratamiento_alergia_id= alergia.id_alergia 
order by niño asc

--el cliente que ha adquirido mas servicios--
select (cliente.nombre_cliente || ' ' || cliente.apellido_cliente) as Cliente,
count(servicio.id_servicio) as numero_de_servicios 
from cliente inner join servicio on id_cliente=servicio_cliente_id 
group by cliente.nombre_cliente, cliente.apellido_cliente 
order by numero_de_servicios desc
--lo que han ganado las niñeras en el mes
select (niñera.nombre_niñera || ' ' || niñera.apellido_niñera) as niñera, 
sum(servicio.pago_realizado_servicio) as total_ganado
from cliente inner join servicio on id_cliente=servicio_cliente_id 
inner join niñera on id_niñera=servicio_niñera_id 
where current_date - servicio.fecha_servicio <=30 
group by niñera.nombre_niñera,niñera.apellido_niñera
order by nombre_niñera asc

