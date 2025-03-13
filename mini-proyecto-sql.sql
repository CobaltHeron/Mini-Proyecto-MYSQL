CREATE TABLE `Personas` (
	`id_persona` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`sala_asignada` INTEGER NOT NULL,
	`nombre` VARCHAR(255) NOT NULL,
	`tipo` ENUM('Estudiante', 'Profesor', 'Otro') NOT NULL,
	PRIMARY KEY(`id_persona`)
);


CREATE TABLE `Asistencias` (
	`id_asistencia` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_mascota` INTEGER NOT NULL,
	`id_persona` INTEGER NOT NULL,
	`asistencia` BOOLEAN NOT NULL,
	`fecha` DATE,
	`hora_entrada` TIME,
	`hora_salida` TIME,
	PRIMARY KEY(`id_asistencia`)
);


CREATE TABLE `Testimonios` (
	`id_testimonio` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_persona` INTEGER NOT NULL UNIQUE,
	`fecha` DATE,
	`descripción` VARCHAR(1000),
	PRIMARY KEY(`id_testimonio`)
);


CREATE TABLE `Eventos` (
	`id_evento` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` ENUM('Asignatura', 'Evento especial', 'Descanso') NOT NULL,
	`fecha` DATE NOT NULL,
	`descripcion` VARCHAR(1000),
	PRIMARY KEY(`id_evento`)
);


CREATE TABLE `Mascotas` (
	`id_mascota` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_propietario` INTEGER NOT NULL,
	`nombre` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_mascota`)
);


CREATE TABLE `Participaciones` (
	`id_participación` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_persona` INTEGER NOT NULL,
	`id_evento` INTEGER NOT NULL,
	PRIMARY KEY(`id_participación`)
);


CREATE TABLE `Mochilas` (
	`id_mochila` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_persona` INTEGER UNIQUE,
	`tipo` ENUM('Grande', 'Pequeña'),
	`descripción` VARCHAR(1000),
	PRIMARY KEY(`id_mochila`)
);


ALTER TABLE `Testimonios`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Mascotas`
ADD FOREIGN KEY(`id_propietario`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Participaciones`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Participaciones`
ADD FOREIGN KEY(`id_evento`) REFERENCES `Eventos`(`id_evento`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Asistencias`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Asistencias`
ADD FOREIGN KEY(`id_mascota`) REFERENCES `Mascotas`(`id_mascota`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Mochilas`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;