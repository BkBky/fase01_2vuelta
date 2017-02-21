Last login: Tue Feb 21 09:39:03 on ttys000
CodeaCamp09s-Mac-mini:~ codea_mac_09$ cd Desktop/
CodeaCamp09s-Mac-mini:Desktop codea_mac_09$ cd /Users/codea_mac_09/Desktop/fase01_2vuelta/fase01_dia13_lunes/primer_base_datos_lunes 
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ cat << EOF > ~/.sqliterc
> .headers on
> .mode column
> EOF
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ CREATE TABLE usuarios (
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   id INTEGER PRIMARY KEY AUTOINCREMENT,
id: INTEGER: no such user
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   nombre VARCHAR(64) NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   apellido  VARCHAR(64) NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   email VARCHAR(128) UNIQUE NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   fecha_nacimiento DATETIME NOT NULL,
-bash: fecha_nacimiento: command not found
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   genero VARCHAR(10) NOT NULL
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ );CREATE TABLE usuarios (
-bash: syntax error near unexpected token `)'
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   id INTEGER PRIMARY KEY AUTOINCREMENT,
id: INTEGER: no such user
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   nombre VARCHAR(64) NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   apellido  VARCHAR(64) NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   email VARCHAR(128) UNIQUE NOT NULL,
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   fecha_nacimiento DATETIME NOT NULL,
-bash: fecha_nacimiento: command not found
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$   genero VARCHAR(10) NOT NULL
-bash: syntax error near unexpected token `('
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ )
-bash: syntax error near unexpected token `)'
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ 
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ 
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ 
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ clear

CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ cat << EOF > ~/.sqliterc
> .headers on
> .mode column
> EOF
CodeaCamp09s-Mac-mini:primer_base_datos_lunes codea_mac_09$ sqlite3 ejemplo.db
-- Loading resources from /Users/codea_mac_09/.sqliterc

SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> CREATE TABLE usuarios (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   nombre VARCHAR(64) NOT NULL,
   ...>   apellido  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   fecha_nacimiento DATETIME NOT NULL,
   ...>   genero VARCHAR(10) NOT NULL
   ...> );
sqlite> .schema
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
);
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Esmeralda', 'Fernández', 'efernandez@yahoo.com', '1968-11-03', 'feminino');
sqlite> INSERT INTO usuarios
   ...> ;
Error: near ";": syntax error
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
2           Esmeralda   Fernández  efernandez@yahoo  1968-11-03        feminino  
sqlite>  ALTER TABLE usuarios
   ...>  ADD apodo VARCHAR(64) DEFAULT "este deberia ser apodo" NOT NULL;
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo                 
----------  ----------  ----------  ----------------  ----------------  ----------  ----------------------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   este deberia ser apodo
2           Esmeralda   Fernández  efernandez@yahoo  1968-11-03        feminino    este deberia ser apodo
sqlite> UPDATE usuarios
   ...> SET apodo = 'Charly'
   ...> WHERE nombre = 'Carlos';
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   Charly    
2           Esmeralda   Fernández  efernandez@yahoo  1968-11-03        feminino    este deber
sqlite> UPDATE usuarios3
   ...> SET apellido = 'Rivera', fecha_nacimiento = '1980-11-03'
   ...> WHERE nombre = 'Carlos';
Error: no such table: usuarios3
sqlite> UPDATE usuarios
   ...> SET apellido = 'Rivera', fecha_nacimiento = '1980-11-03'
   ...> WHERE nombre = 'Carlos';
sqlite> 
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Rivera      carlos@yahoo.com  1980-11-03        masculino   Charly    
2           Esmeralda   Fernández  efernandez@yahoo  1968-11-03        feminino    este deber
sqlite> 
