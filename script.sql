

CREATE TABLE dueno
(
  cedula varchar(50) NOT NULL,
  nombre varchar(50),
  apellido1 varchar(50),
  apellido2 varchar(50),
  telefono varchar(50),
  direccion varchar(50),
  CONSTRAINT pk_dueno PRIMARY KEY (cedula)
)
WITH (
  OIDS=FALSE
);


CREATE TABLE especie
(
  cod_especie varchar(50) NOT NULL,
  descripcion varchar(150),
  CONSTRAINT pk_especie PRIMARY KEY (cod_especie)
)
WITH (
  OIDS=FALSE
);




-- Table: "veterinaria".raza



CREATE TABLE raza
(
  cod_raza varchar(50) NOT NULL,
  cod_especie varchar(50),
  descripcion varchar(150),
  CONSTRAINT pk_raza PRIMARY KEY (cod_raza),
  CONSTRAINT fk_especie FOREIGN KEY (cod_especie)
      REFERENCES especie (cod_especie) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);



-- Table: "veterinaria".mascota

-- DROP TABLE "veterinaria".mascota;

CREATE TABLE mascota
(
  nombre varchar(50),
  fecha_nacimiento timestamp without time zone NOT NULL,
  cod_raza varchar(50) NOT NULL,
  cedula varchar(50) NOT NULL,
  cod_mascota varchar(50) NOT NULL,
  CONSTRAINT pk_mascota PRIMARY KEY (cod_mascota),
  CONSTRAINT fk_dueno FOREIGN KEY (cedula)
      REFERENCES dueno (cedula) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_raza FOREIGN KEY (cod_raza)
      REFERENCES raza (cod_raza) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);




-- Table: "veterinaria".vacuna

-- DROP TABLE "veterinaria".vacuna;

CREATE TABLE vacuna
(
  cod_vacuna varchar(50) NOT NULL,
  descripcion varchar(150),
  CONSTRAINT pk_vacuna PRIMARY KEY (cod_vacuna)
)
WITH (
  OIDS=FALSE
);


-- Table: "veterinaria".enfermedad

-- DROP TABLE "veterinaria".enfermedad;

CREATE TABLE enfermedad
(
  cod_enfermedad varchar(50) NOT NULL,
  descripcion varchar(150),
  CONSTRAINT pk_enfermedad PRIMARY KEY (cod_enfermedad)
)
WITH (
  OIDS=FALSE
);






CREATE TABLE mascota_vacuna
(
  cod_mascota varchar(50) NOT NULL,
  fecha_aplicacion timestamp without time zone NOT NULL,
  cod_vacuna varchar(50) NOT NULL,
  fecha_proxima_aplicacion timestamp without time zone NOT NULL,
  CONSTRAINT pk_mascota_vacuna PRIMARY KEY (cod_mascota, fecha_aplicacion, cod_vacuna),
  CONSTRAINT fk_mascota FOREIGN KEY (cod_mascota)
      REFERENCES mascota (cod_mascota) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_vacuna FOREIGN KEY (cod_vacuna)
      REFERENCES vacuna (cod_vacuna) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);





CREATE TABLE enfermedad_vacuna
(
  cod_enfermedad varchar(50) NOT NULL,
  cod_vacuna varchar(50) NOT NULL,
  porc_efectividad varchar(50) NOT NULL,
  notas varchar(150) NOT NULL,
  CONSTRAINT pk_enfermedad_vacuna PRIMARY KEY (cod_enfermedad, cod_vacuna),
  CONSTRAINT fk_enfermedad FOREIGN KEY (cod_enfermedad)
      REFERENCES enfermedad (cod_enfermedad) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_vacuna FOREIGN KEY (cod_vacuna)
      REFERENCES vacuna (cod_vacuna) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);



-- Table: "veterinaria".enfermedad_mascota

--DROP TABLE "veterinaria".enfermedad_mascota;

CREATE TABLE enfermedad_mascota
(
  cod_mascota varchar(50) NOT NULL,
  cod_enfermedad varchar(50) NOT NULL,
  fecha_diagnostico timestamp without time zone NOT NULL,
  notas varchar(150) NOT NULL,
  CONSTRAINT pk_enfermedad_mascota PRIMARY KEY (cod_mascota, cod_enfermedad, fecha_diagnostico),
  CONSTRAINT fk_enfermedad FOREIGN KEY (cod_enfermedad)
      REFERENCES enfermedad (cod_enfermedad) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk_mascota FOREIGN KEY (cod_mascota)
      REFERENCES mascota (cod_mascota) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

