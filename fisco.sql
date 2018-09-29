create table if not exists miembros (
  id_miembro int auto_increment not null,
  nombre varchar(45),
  tesorero tinyint,
  primary key(id_miembro)
);
create table if not exists proyectos (
  id_proyecto int auto_increment not null,
  titulo varchar(45),
  descripcionProyecto varchar(200),
  meta int,
  status tinyint,
  avanceMiembro float,
  primary key(id_proyecto)
);
create table if not exists relacionMiemProy (
  id_relacionMiemProy int auto_increment not null,
  miembro int,
  proyecto int,
  primary key(id_relacionMiemProy),
  foreign key(miembro) references miembros(id_miembro),
  foreign key(proyecto) references proyectos(id_proyecto)
);
create table if not exists cajaChica (
  id_cajaChica int auto_increment not null,
  miembro int,
  fecha timestamp default now(),
  monto float,
  descripcionMonto varchar(200),
  primary key(id_cajaChica),
  foreign key(miembro) references miembros(id_miembro)
);
