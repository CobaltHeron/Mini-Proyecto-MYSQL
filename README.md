# Mini-Proyecto-MYSQL.
Mini-proyecto de MYSQL realizado para el Bootcamp de Data Analysis &amp; IA

## Paso 1. Definición del Tema: La Desaparición de Falete.

¿Quién se ha llevado a Falete?

![IMG_20250314_100800-removebg-preview](https://github.com/user-attachments/assets/3a243dc9-1b17-423e-99ee-2565ee406bbb)


Era un día soleado en Las Palmas de Gran Canaria, y los estudiantes y el personal de Reboot Academy disfrutaban de una jornada animada en el bootcamp de IA y Análisis de Datos. Sin embargo, el ambiente se tornó sombrío cuando el patito de goma querido Falete, que siempre estaba sobre el estante del microondas, desapareció misteriosamente.

La noticia se esparció rápidamente entre los estudiantes. Algunos decían haberlo visto por última vez hace dos días, mientras que otros aseguraban que aún estaba sobre la estantería esa misma mañana. Lo único claro era que los responsables de su desaparición no serían fáciles de atrapar sin pistas.
Como encargado de resolver este misterio, decidiste utilizar la base de datos de la academia para rastrear las posibles huellas del responsable de la desapación. 

Para esta misión, tendrás a tu disposición, entre otras cosas, el control de asistencia de todos los miembros de la academia, con que incluye la hora de entrada y de salida y un registro de testimonios de algunos de los usuarios. La ultima persona en irse todos los dias es, normalmente, Meli. A través de sus interacciones con el sistema, podrás obtener las pistas claves para encontrar al responsable  de la desaparición de Falete.

Periodo a tener en cuenta: El misterio ha podido ocurrir en los primeros 3 días de la semana (Lunes, 10, martes 11 y miércoles 12  de marzo)
______________________________________________________________________________________________________________________________________

## Paso 2: Planificación del Modelo de Datos.

### Tablas y columnas. Definir claves primarias (PK) y foráneas (FK) para garantizar la integridad referencial:

Tabla `Personas`:  
`id_persona` (**PK**)  
`nombre`  
`tipo` - ENUM (Estudiante, Profesor, Otros)  
`edad`  

Tabla `Asistencias`:  
`id_asistencia` (**PK**)  
`id_persona` (**FK** a la tabla Personas)  
`id_mascota` (**FK** a tabla Mascotas)  
`asistencia` 
`fecha`  
`hora_entrada`  
`hora_salida`  

Tabla `Testimonios`:  
`id_testimonio` (PK)  
`id_persona` UNIQUE (FK a la tabla `Personas`)  
`fecha`  
`descripcion`  

Tabla `Eventos`:  
`id_evento` (PK)  
`nombre` ENUM (Asignatura, Evento especial, descanso)  
`fecha`  
`descripcion`  

Tabla `Mascotas`:  
`id_mascota` (PK)  
`id_persona` (FK a la tabla `Personas`)
`nombre`  
`tipo`  

Tabla `Participaciones`: (Tabla Intermedia)  
`id_paticipación` (PK)  
`id_persona` (FK a la tabla `Personas`)  
`id_evento` (FK a la tabla `Eventos`)  

Tabla `Mochilas`:  
`id_mochila` (PK)  
`id_persona` (FK a la tabla Personas)  
`tipo` ENUM (Pequeña, Grande)  
`descripción`  

**Diagrama Entidad-Relación (ER)**

![mini-proyecto-sql](https://github.com/user-attachments/assets/02ce79d9-d661-487b-8c41-25a7ae801b6b)


**Tipos de relación (N:N, N:1, 1:1)**

- Relación 1:1 - Tabla `Personas`     a Tabla `Mochilas`
- Relación N:1 - Tabla `Asistencias`  a Tabla `Personas`
- Relación N:N - Tabla `Personas`     a Tabla `Eventos` - Tabla intermedia: `Participaciones`
