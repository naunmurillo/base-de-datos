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
constraint cliente_fk foreign key (cliente_niño_id) references cliente (id_cliente) );

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


--tabla servicio--

create table servicio(
	id_servicio varchar(4),
	pago_realizado_servicio float,
	cant_hijos_servicio numeric,
	horas_servicio numeric,
	fecha_servicio date,
	inconveniente_servicio varchar(50),
	calificacion_servicio numeric,
	
	servicio_cliente_id varchar(4),
	servicio_niñera_id varchar(4),
	constraint cliente_fk foreign key (servicio_cliente_id) references cliente(id_cliente),
	constraint niñera_fk foreign key (servicio_niñera_id) references niñera(id_niñera)
	
);


--tabla alergia--

create table alergia(
	id_alergia varchar (4) primary key not null,
	nombre_alergia varchar (20) not null,
	sintoma_alergia varchar (40),
	niño_alergia_id varchar(4),
	constraint niño_fk foreign key (niño_alergia_id) references niño(id_niño)
);

--tabla tratamiento--

create table tratamiento(
	id_tratamiento varchar (4) primary key not null,
	descripcion_tratamiento varchar(50),
	tratamiento_alergia_id varchar(4),
	constraint tratamiento_fk foreign key (tratamiento_alergia_id) references alergia(id_alergia)
);



