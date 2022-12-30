create database crudUSuario
go
use crudUSuario
go
create table usuario(
id int IDENTITY      PRIMARY KEY ,
nombre varchar(100),
fechaNacimiento date,
sexo varchar(1)
)
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure crearUsuario
@p_nombre varchar(100),
	@p_fechaNacimiento date,
	@p_sexo varchar(1)
as
begin
	declare @v_id int
  insert into usuario 
  (nombre,fechaNacimiento,sexo) 
  values
  (@p_nombre,@p_fechaNacimiento,@p_sexo)
  set @v_id=@@identity
  select @v_id as id
end
GO

create procedure actualizarUsuario
    @p_id int,
    @p_nombre varchar(100),
	@p_fechaNacimiento date,
	@p_sexo varchar(1)
as
begin
   update usuario set  nombre = @p_nombre, fechaNacimiento = @p_fechaNacimiento, sexo = @p_sexo 
  where id = @p_id  
end
GO
create procedure eliminarUsuario
 @p_id int
 as 
 begin
   delete usuario where id = @p_id
 end
 GO
 create procedure leerUsuarios
 @p_filtro varchar(100)  = '1=1',
 @p_orden as varchar (10) = 'id'
 as 
 begin
 execute ('select  id,nombre,fechaNacimiento, sexo  from usuario where (' + @p_filtro+ ') order by ' + @p_orden)
 
 end
 Go

