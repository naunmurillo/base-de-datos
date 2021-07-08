--tabla cliente--
create table cliente
( 
id_cliente varchar(10) primary key not null, 
cedula_cliente varchar(10) not null,
nombre_cliente varchar(20) not null, 
apellido_cliente varchar(20) not null, 
fecha_nacimiento_cliente date, 
telefono_cliente numeric(10), 
estado_civil_cliente varchar(10), 
genero_cliente varchar(10), 
nacionalidad_cliente varchar(20), 
direccion_cliente varchar(50) not null );

--insercion de tabla cliente--
insert into cliente values ('C001', '1315597433', 'Naun', 'Murillo', '2000-06-16', '0969510615', 'Soltero', 'Masculino', 'ecuatoriana', 'San Mateo barrio las Flores');
insert into cliente values ('C002', '1315347434', 'Irene', 'Murillo', '1997-02-01', '0969510616', 'Soltera', 'Femenino', 'ecuatoriana', 'San Mateo barrio las Flores');
insert into cliente values ('C003', '1312597482', 'Iliana', 'Murillo', '1993-03-10', '0969935241', 'Soltera', 'Femenino', 'ecuatoriana', 'San Mateo barrio las Flores');
insert into cliente values ('C004', '1313497559', 'Daniel', 'Escobar', '2001-05-15', '0969752125', 'Soltero', 'Masculino', 'ecuatoriana', 'calle 13 avenida 10');
insert into cliente values ('C005', '1315269255', 'Habacuc', 'Marcillo', '1995-06-16', '0969123615', 'Casado', 'Masculino', 'ecuatoriana', 'La pradera');
insert into cliente values ('C006', '1315597433', 'Salomon', 'Briones', '1990-02-11', '0969597423', 'Soltero', 'Masculino', 'ecuatoriana', 'Entre la calle 7 y 8 avenida 14');
insert into cliente values ('C007', '1311234567', 'Ester', 'Amarilla', '1998-07-13', '0962670619', 'Casada', 'Femenino', 'ecuatoriana', 'San Mateo barrio La Paz');
insert into cliente values ('C008', '1319876543', 'Abraham', 'Lopez', '1989-06-16', '0912398765', 'Casado', 'Masculino', 'ecuatoriana', 'Manta 2000 a lado del parque');
insert into cliente values ('C009', '1315540120', 'Miqueas', 'Alvia', '2002-06-16', '0969001234', 'Casado', 'Masculino', 'ecuatoriana', 'Santa Marianita barrio Los Laureles');

select * from cliente
--tabla niño--
create table niño
( 
id_niño varchar(10) primary key not null, 
cedula_niño varchar(10) not null,
nombre_niño varchar(20) not null, 
apellido_niño varchar(20) not null, 
genero_niño varchar (10), 
fecha_de_nacimiento_niño date, 
nacionalidad_niño varchar(20), 
cliente_niño_id varchar(10) not null, 
constraint cliente_fk foreign key 
(cliente_niño_id) references cliente (id_cliente) );

--ingreso datos niño
--naun murillo
insert into niño values ('H001', '1303753618', 'Sofonias', 'Murillo', 'Masculino', '2011-05-02', 'ecuatoriana', 'C001');
--irene murillo
insert into niño values ('H002', '1706172648', 'Raquel', 'Murillo', 'Femenino', '2015-01-02', 'ecuatoriana', 'C002');
insert into niño values ('H003', '1103037048', 'Joel', 'Murillo', 'Masculino', '2010-01-03', 'ecuatoriana', 'C002');
--iliana murillo
insert into niño values ('H004', '1704997012', 'Royli', 'Murillo', 'Masculino', '2019-10-02', 'ecuatoriana', 'C003');
--daniel esscobar
insert into niño values ('H005', '1714818299', 'Jonas', 'Lopez', 'Masculino', '2017-09-02', 'ecuatoriana', 'C004');
insert into niño values ('H006', '1113627071', 'Natanael', 'Escobar', 'Masculino', '2015-07-09', 'ecuatoriana', 'C004');
--habacuc marcillo
insert into niño values ('H007', '1303292583', 'Pedro', 'Lucas', 'Masculino', '2017-04-07', 'ecuatoriana', 'C005');
--salomon briones
insert into niño values ('H008', '1200984761', 'Pablo', 'Briones', 'Masculino', '2017-04-09', 'ecuatoriana', 'C006');
insert into niño values ('H009', '1708706302', 'Maria', 'Briones', 'Femenino', '2019-02-02', 'ecuatoriana', 'C006');
--ester amarilla
insert into niño values ('H010', '1711453470', 'Martha', 'Carpio', 'Femenino', '2013-04-10', 'ecuatoriana', 'C007');
--abraham lopez
insert into niño values ('H011', '1711402980', 'Dorcas', 'Lopez', 'Femenino', '2014-01-09', 'ecuatoriana', 'C008');
--miqueas alvia
insert into niño values ('H012', '1709262933', 'Jacob', 'Alvia', 'Masculino', '2010-06-07', 'ecuatoriana', 'C009');



select * from niño


--tabla niñera
create table niñera(
	id_niñera varchar(4) primary key not null,
	cedula_niñera varchar(10) not null,
	nombre_niñera varchar(20) not null,
	apellido_niñera varchar(20) not null,
	fecha_de_nacimiento_niñera date, 
	estado_civil_niñera varchar(10),
	nacionalidad_niñera varchar (11),
	direccion_niñera varchar(50) not null,
	tiempo_laborando_niñera varchar(20) );

--ingreso datos niñera
--virginia pico
	insert into niñera values ('N001', '1351350012', 'Virginia', 'Pico', '1998-06-13','Soltera', 'ecuatoriana', 'Santa Ana barrio Monte oscuro', '2 meses');
	insert into niñera values ('N002', '1314679284', 'Leslin', 'Pico', '2000-05-15','Soltera', 'ecuatoriana', 'Santa Ana barrio Monte oscuro', '6 meses');
	insert into niñera values ('N003', '1326373892', 'Floricelda', 'Paz', '1979-06-13','Casada', 'ecuatoriana', 'Santa Ana barrio Monte oscuro', '2 años');


select * from niñera 
--tabla servicio--

create table servicio(
	id_servicio varchar(4)primary key not null,
	pago_realizado_servicio float,
	cant_hijos_servicio numeric,
	horas_servicio numeric,
	fecha_servicio date,
	inconveniente_servicio varchar(50),
	calificacion_servicio numeric,
	servicio_cliente_id varchar(4),
	servicio_niñera_id varchar(4),
	constraint cliente_fk foreign key 
	(servicio_cliente_id) references cliente(id_cliente),
	constraint niñera_fk foreign key 
	(servicio_niñera_id) references niñera(id_niñera));
--cliente Naun murillo
insert into servicio values ('S001', 10.00, 1, 1, '2021-06-03', null, 4, 'C001', 'N001');
insert into servicio values ('S002', 10.00, 1, 1, '2021-06-05', 'El niño vacio su frasco de talco', 5, 'C001', 'N002');
insert into servicio values ('S003', 20.00, 1, 2, '2021-06-07', 'Ninguno', 5, 'C001', 'N003');
insert into servicio values ('S004', 20.00, 1, 2, '2021-06-08', 'El niño se resbalo con uno de sus juguetes', 5, 'C001', 'N003');
--cliente irene murillo
insert into servicio values ('S005', 30.00, 2, 2, '2021-06-06', 'El niño Joel se cayo de un mueble', 5, 'C002', 'N002');
insert into servicio values ('S006', 45.00, 2, 3, '2021-06-09', 'Ninguno', 5, 'C002', 'N001');
insert into servicio values ('S007', 15.00, 2, 1, '2021-06-10', 'Ninguno', 5, 'C002', 'N003');
---cliente iliana murillo
insert into servicio values ('S008', 10.00, 1, 1, '2021-06-04', 'Ninguno', 4, 'C003', 'N001');
insert into servicio values ('S009', 20.00, 1, 2, '2021-06-15', 'Ninguno', 5, 'C003', 'N001');
---cliente Daniel escobar
insert into servicio values ('S010', 30.00, 2, 2, '2021-06-07', 'Ninguno', 5, 'C004', 'N002');
insert into servicio values ('S011', 30.00, 2, 3, '2021-06-01', 'El niño natanael vomito', 5, 'C004', 'N001');
--cliente habacuc marcillo
insert into servicio values ('S012', 10.00, 1, 1, '2021-06-15', 'Ninguno', 5, 'C005', 'N001');
insert into servicio values ('S013', 30.00, 1, 3, '2021-06-16', 'Ninguno', 5, 'C005', 'N001');
--cliente salomon briones
insert into servicio values ('S014', 30.00, 2, 2, '2021-05-15', 'El niño rompio un vaso', 4, 'C006', 'N003');
--cliente ester amarilla
insert into servicio values ('S015', 20.00, 1, 2, '2021-05-06', 'Ninguno', 5, 'C007', 'N003');
--cliente abraham lopez
insert into servicio values ('S016', 10.00, 1, 1, '2021-05-16', 'El niño tenia fiebre', 5, 'C008', 'N002');
--cliente miqueas alvia
insert into servicio values ('S017', 30.00, 1, 3, '2021-05-10', 'Ninguno', 5, 'C009', 'N002');



select * from servicio
--tabla alergia hijo
create table alergia_niño (
	alergia_niño_id varchar(5)primary key not null,
	
	alergia_niño_alergia_id varchar (4) not null,
	alergia_niño_niño_id varchar (4),
	constraint alergia_niñoo_fk foreign key 
	(alergia_niño_niño_id) references niño(id_niño),
	constraint alergia_alergia_fk foreign key 
	(alergia_niño_alergia_id) references alergia(id_alergia)
);
insert into alergia_niño values ('AH001', 'A001' , 'H002');
insert into alergia_niño values ('AH002', 'A002', 'H005');
insert into alergia_niño values ('AH003', 'A003', 'H007');
insert into alergia_niño values ('AH004', 'A002', 'H008');
insert into alergia_niño values ('AH005', 'A003', 'H004');
--tabla alergia--

create table alergia(
	id_alergia varchar (4) primary key not null,
	nombre_alergia varchar (20) not null,
	sintoma_alergia varchar (40)
);
insert into alergia values('A001', 'Rinitis', 'Secreción nasal y estornudos');
insert into alergia values('A002', 'Mascotas', 'Estornudos, ojos llorosos o picazón');
insert into alergia values('A003', 'Polen', 'Tos, estornudos,picor en la nariz')
select *from alergia
--tabla tratamiento--

create table tratamiento(
	id_tratamiento varchar (4) primary key not null,
	descripcion_tratamiento varchar(50),
	tratamiento_alergia_id varchar(4),
	constraint tratamiento_fk foreign key (tratamiento_alergia_id) references alergia(id_alergia)
);
select *from tratamiento
insert into tratamiento values('T001', 'Loratadina, cetirizina y fexofenadina', 'A001');
insert into tratamiento values('T002', 'Levocetirizina, desloratadina', 'A002');
insert into tratamiento values('T003', 'Cetirizina, desloratadina,fexofenadina', 'A003');

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
--
select (niñera.nombre_niñera || ' ' || niñera.apellido_niñera) as niñera, 
sum(servicio.pago_realizado_servicio) as total_ganado
from cliente inner join servicio on id_cliente=servicio_cliente_id 
inner join niñera on id_niñera=servicio_niñera_id 
where current_date - servicio.fecha_servicio <=30 
group by niñera.nombre_niñera,niñera.apellido_niñera
order by nombre_niñera asc

