CREATE TABLE usuarios(
    id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(32) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50) NOT NULL,
    rol VARCHAR(50) NOT NULL 
    check (rol='administrador' OR rol='usuario'),
    status VARCHAR(15) NOT NULL
    check (status='activo' OR status='inactivo'),
    fecha_hora TIMESTAMP DEFAULT (datetime('now','localtime'))
);