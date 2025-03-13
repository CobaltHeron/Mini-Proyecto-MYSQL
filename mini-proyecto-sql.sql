CREATE TABLE `Personas` (
	`id_persona` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`sala_asignadas` INTEGER NOT NULL,
	`nombre` VARCHAR(255) NOT NULL,
	`tipo` ENUM('Estudiante', 'Profesor', 'Otro') NOT NULL,
	PRIMARY KEY(`id_persona`)
);


CREATE TABLE `Asistencias` (
	`id_asistencia` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
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
	`descripción` VARCHAR(255),
	PRIMARY KEY(`id_testimonio`)
);


CREATE TABLE `Eventos` (
	`id_eventos` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`nombre` ENUM('Asignatura', 'Evento especial', 'Descanso') NOT NULL,
	`fecha` DATE NOT NULL,
	`descripcion` VARCHAR(255),
	PRIMARY KEY(`id_eventos`)
);


CREATE TABLE `Mascotas` (
	`id_mascota` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_propietario` INTEGER NOT NULL,
	`nombre` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`id_mascota`)
);


CREATE TABLE `Participaciones` (
	`id_evento` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id_persona` INTEGER NOT NULL,
	`id_actividad` INTEGER NOT NULL,
	PRIMARY KEY(`id_evento`)
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
ADD FOREIGN KEY(`id_actividad`) REFERENCES `Eventos`(`id_eventos`)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE `Asistencias`
ADD FOREIGN KEY(`id_persona`) REFERENCES `Personas`(`id_persona`)
ON UPDATE CASCADE ON DELETE CASCADE;