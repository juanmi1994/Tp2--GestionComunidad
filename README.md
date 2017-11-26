# Tp2--GestionComunidad
# Aplicacion para gestion de pagos de una comunidad. 

Aplicacion realizada en CGI Perl, con persistencia de datos en fichero.txt

## Requisitos

Es necesario tener instalado en  el PC el servidor apache y activar el modulo CGI para 
poder ejecutar el proyecto.

### Cómo ejecutar el proyecto

Realizamo clone del proyecto

Copiamos el archivo comunidad.pl en la carpeta /usr/lib/cgi-bin/

Nos aseguramos que el archivo tiene los permisos necesarios para poder ejecutarlo, sino se los otorgamos.

En el navegador introducimos localhost/cgi-bin/comunidad.pl

El fichero se guardará en /tmp/datos.txt

 * Sería interesante tener una estructura de registros y campos en el fichero
usado para persistencia, que facilite a otros programas lo obtención de los mismos.
