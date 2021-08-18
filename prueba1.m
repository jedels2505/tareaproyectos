pkg load database %cargar el paquete

conn = pq_connect(setdbopts('dbname','juliodeleon','host','localhost',
'port','5432','user','postgres','password','raton2010'))
N=pq_exec_params(conn, "insert into Tareaproyectos values ('Daniel','201801656');") %insertar datos en la tabla
N=pq_exec_params(conn, 'select * from Tareaproyectos;') %ver datos en la tabla