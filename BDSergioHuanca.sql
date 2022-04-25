/* creacion de tablas*/
create table acceso
(   ci int primary key,
    usuario varchar(50),
    password varchar(30)

);

create table persona
(   ci int primary key,
    nombrecompleto varchar(60),
    fechanac datetime,
    departamento varchar(2)
);

create table inscripcion
(   ciestudiante int,
    sigla varchar(10),
    nota1 int,
    nota2 int,
    nota3 int, 
    notafinal int
);
/*insertar valores a las tablas....*/
--tabla acceso
insert into acceso values(8300, 'sergiolh', 'ser123');
insert into acceso values(1000, 'juan123', 'jua123');

--tabla persona
insert into persona values(7875, 'Sergio Huanca Cuellar', '1996-02-25', '02');
insert into persona values(1234, 'Juan Perez Paz', '1995-02-01', '01');
insert into persona values(2345, 'Luis Mara Alcon', '1998-11-11', '03');
insert into persona values(3456, 'Aldo Ramos Vega', '1990-08-20', '04');
insert into persona values(4567, 'Evelyn Condori Tarqui', '1995-01-20', '02');
insert into persona values(2222, 'Mari Laura Cuellar', '1993-09-20', '07');
insert into persona values(4444, 'Alex Saavedra', '1988-12-03', '05');
insert into persona values(5555, 'Reina Cruz Mayta', '1994-04-03', '07');
--tabla inscripcion
insert into inscripcion values(7875, 'INF-324', 30,20,35, 85);
insert into inscripcion values(7875, 'INF-325', 25,25,30, 80);
insert into inscripcion values(1234, 'INF-324', 20,25,15, 60);
insert into inscripcion values(1234, 'INF-317', 15,30,25, 70);
insert into inscripcion values(4567, 'INF-330', 18,25,30, 73);
insert into inscripcion values(2222, 'INF-324', 13,25,30, 68);
insert into inscripcion values(2222, 'INF-325', 10,25,30, 65);
insert into inscripcion values(4444, 'INF-324', 10,20,20, 50);