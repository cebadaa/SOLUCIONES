create database V1
use V1
drop table categorias
drop table productos
drop table pedidos

create table categorias(
    id_cat int IDENTITY(1,1) primary key,
    nombre_cat varchar(200)
);

create table productos(
    id_pro int IDENTITY(1,1) primary key,
    nombre_pro varchar(200),
    precio_pro decimal(10,2),
    id_cat int,
    foreign key (id_cat) references categorias(id_cat)
);


create table clientes(
    id_cli int IDENTITY(1,1) primary key,
    nombre_cli varchar(200),
    direccion_cli varchar(200),
    telefono_cli varchar(200),
    correo_cli varchar(200)
);

create table pedidos(
    id_pedidos int IDENTITY(1,1) primary key,
    fecha_pedido datetime,
    id_cli int,
    foreign key (id_cli) references clientes(id_cli)
);
create table detalle_pedido(
    id_detalle int IDENTITY(1,1) primary key,
    cantidad decimal(18,2),
	precio decimal(18,2),
	id_pedidos int,
	id_pro int,
	foreign key (id_pedidos) references pedidos(id_pedidos),
	foreign key (id_pro) references productos(id_pro)
);
create table trabajadores(
    id_traba int IDENTITY(1,1) primary key,
    nombre_traba varchar(200),
    cargo_traba varchar(200),
    salario_traba decimal(10,2)
);

create table proveedores(
    id_prov int IDENTITY(1,1) primary key,
    nombre_prov varchar(200),
    direccion_prov varchar(200),
    telefono_prov varchar(200)
);
select *from trabajadores