DROP DATABASE IF EXISTS usuario;
CREATE DATABASE IF NOT EXISTS usuario;

CREATE TABLE IF NOT EXISTS roles(
id INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
descripcion VARCHAR(100) NULL,
PRIMARY KEY(id)
);
CREATE TABLE IF NOT EXISTS usuarios(
id INT NOT NULL AUTO_INCREMET,
username varchar(120) NOT NULL,
nombre VARCHAR(120) NOT NULL,
apellido VARCHAR(120) NOT NULL,
password VARCHAR(250) NOT NULL,
fecha_nacimiento DATE NULL,
enable TINYINT DEFAULT 1,
PRIMARY KEY(id),
UNIQUE(username)
);

CREATE TABLE IF NOT EXISTS roles_usuarios(
roles_id INT NOT NULL,
usuarios_id INT NOT NULL,
PRIMARY KEY(roles_id, usuarios_id),
FOREIGN KEY(roles_id) REFERENCES roles(id),
FOREIGN KEY(usuarios_id) REFERENCES usuarios(id),
);
CREATE TABLE IF NOT EXISTS empleados(
id INT NOT NULL AUTO_INCREMET,
nombre VARCHAR(45) NOT NULL,
apellido VARCHAR(120) NOT NULL,
sueldo DOUBLE NOT NULL,
usuarios_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(usuarios_id) REFERENCES usuarios(id)
);
INSERT INTO roles(nombre, descripcion)
VALUES('ROLE_ADMIN','usuario Administrador del sistema');

INSERT INTO roles(nombre, descripcion)
VALUES('ROLE_USER','usuario del sistema');

INSERT INTO usuarios (username,nombre,apellido,password,fecha_nacimiento,enable)
VALUES('diego@gmail.com','diego','ardila','$2a$10$lYfoSY5IYtbzmUpnMnvdK.p6EiAlQl5nWQ9aUGEYbcjJFnTKPniim','1985-01-30',1);
INSERT INTO usuarios (username,nombre,apellido,password,fecha_nacimiento,enable)
VALUES('carlos@gmail.com','diego','ardila','$2a$10$5OhVAF7aXnajnXJmtlu/RO28GSl7Y6WLJpj2IHDDoeUToFj51LFOe','1985-01-3',1);

INSERT INTO roles_usuarios(roles_id,usuarios_id),
VALUES(1,1);
INSERT INTO roles_usuarios(roles_id,usuarios_id),
VALUES(2,1);
INSERT INTO roles_usuarios(roles_id,usuarios_id),
VALUES(2,2);




