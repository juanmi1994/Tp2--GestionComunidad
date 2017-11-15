#!/usr/bin/perl 

use CGI;
use utf8;

$query = new CGI;

if(!$query->param){
	#determinamos la codificacion
    print $query->header(-charset => 'utf8');
    #iniciamos el documento html
    print $query->start_html('Gestion Comunidad');
    #iniciamos el formulario
    print $query->start_form(-onsubmit=>'/submit');
    #creamos la cabecera
    print $query->h1('Gestion de Comunidad');
    print $query->h3('c/ Antonio de Nebrija N: 4');
    #añadimos los campos del formulario
    print $query->label('Fecha (dd/mm/yyyy): ');
    print $query->textfield(-name=>'fecha',-size=>10,-maxlength=>50);
    print $query->br;
    print $query->label('Vivienda: ');
    print $query->popup_menu('vivienda',
			    ['1-A','1-B','1-C','2-A','2-B','2-C'],
			    '1ºa');
    print $query->br;
    print $query->label('Propietario: ');
    print $query->textfield(-name=>'propietario',-size=>17,-maxlength=>50);
    print $query->br;
    print $query->label('Cantidad a abonar: ');
    print $query->textfield(-name=>'cantidad',-size=>11,-maxlength=>6);
    print $query->br;
    print $query->br;
    #incluimos los botones de accion
    print $query->submit('submit','Enviar');
    print $query->reset('reset','limpiar datos');
    #fin del formulario
    print $query->end_form;
   
} else {

    print $query->header(-charset => 'utf8');
    print $query->start_html('Datos');
	#guardamos los parametros en variables
    my $fecha = $query->param('fecha');
    my $vivienda = $query->param('vivienda');
    my $propietario = $query->param('propietario');
    my $cantidad = $query->param('cantidad');
    #guardamos los datos en un fichero de texto
     open F, '>>/tmp/datos.txt' or die "El archivo no se puede abrir:$!";
     print F "$fecha $vivienda $propietario $cantidad \n";
     close F;
	
    # Leer un fichero de texto
    # Problemas a la hora de imprimir las lineas del archivo de texto
    open F, '/tmp/datos.txt' or die "El archivo no se puede abrir:$!";
    while(<F>) {
    print "$_ <br>";
    }
    close F;
} 
