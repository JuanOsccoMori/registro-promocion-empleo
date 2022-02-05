use master 
go

if exists(select name from sys.databases where name='BD_PromocionEmpleo')
	drop database BD_PromocionEmpleo 
go
create database BD_PromocionEmpleo

ON PRIMARY(NAME=BD_PromocionEmpleo_data,
    FILENAME='C:\BD_PromocionEmpleo_data.mdf',size=18MB, maxsize=UNLIMITED , filegrowth=20MB),
filegroup BD_PromocionEmpleo1
  ( NAME = BD_PromocionEmpleo_data2,
    FILENAME =
       'C:\BD_PromocionEmpleo_data2.ndf',
    SIZE = 1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB)
log on
  ( NAME=BD_PromocionEmpleo_log,
    FILENAME =
       'C:\BD_PromocionEmpleo_log.ldf',
   size=10MB, maxsize=300MB, filegrowth=20%)
go

use BD_PromocionEmpleo
go


--Entidades fuertes
create table tipoDeDoc(
id_tipoDeDoc int primary key identity,
tipo varchar(50)
)
go

create table Vinculo(
id_Vinculo int primary key identity,
Vinculo varchar(40) not null
)
go

create table Grado(
id_Grado int primary key identity,
Grado varchar(50) not null
)
go

create table TipDeDiscap(
id_tipoDeDiscap int primary key identity,
discapacidad varchar(60) not null
)
go


--Entidades Debiles
create table DatosDelGrupoFamiliar(
id_DatosDeGrupoFamiliar int primary key identity,
id_Vinculo int references Vinculo,
descripcion varchar (255),
id_TipoDeDoc int references tipoDeDoc,
numeroDoc char(10)
)
go


create table NivDeEscolar(
id_NiveldeEsc int identity primary key,
nombre varchar(60)not null unique,
CUE char(20),
id_Grado int references Grado,
año_grado varchar(40)
)
go


create table CuposEspeciales(
id_CursosEsp int primary key identity,
DecDiscapa_transplat char(2) default 'No' check(DecDiscapa_transplat in ('Si','No')),
id_tipoDeDiscap int references TipDeDiscap
)
go

create table PersonaPostulante(
id_DatosGenerales int primary key identity,
nombre varchar(60)not null unique,
apellidos varchar(70)not null unique,
sexo char(1) default 'f' check(sexo in ('f','m')),
id_tipoDeDoc int references tipoDeDoc,
numeroDeDoc char(10)not null,
fecNacim date, 
telef char(10),
correo varchar(100)
)
go

create table DatosDelPostulante(
id_Postulante int identity primary key,
id_DatosGenerales int references PersonaPostulante,
domicilio varchar(50)not null unique,
calle varchar(30)not null unique,
numero char(20)not null unique,
barrio varchar(50)not null unique,
dpto varchar(30)not null unique,
piso varchar(40)not null,
monoblock varchar(60)not null,
parcela varchar(50)not null,
c_postal char(10)not null,
localidad varchar(50)not null,
departamento varchar(100)not null,
id_NiveldeEsc int references NivDeEscolar not null,
id_CursosEsp int references CuposEspeciales not null
)
go

--Tablas super debiles
create table TramiteProgramaDePromocionDelEmpleo(
id_Postulante int references DatosDelPostulante,
id_DatosDElGrupoFamiliar int references DatosDelGrupoFamiliar
constraint pkTramiteProgramaDePromocionDelEmpleo primary key(id_Postulante,id_DatosDElGrupoFamiliar)
)
go
