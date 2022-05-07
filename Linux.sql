lsmod   -->    Muestra los módulos cargables en el kernel que están cargados actualmente
cal  -->calendario
Cp -->copiar
cp /etc/host home/alumno/prueba   cp"origen" "destino"
cp -Ru copia todo lo que no tenga el mismo nombre
mv -->mover
rm -rf -->borrar directorio
rm borra -->los no directorios
rm -Ri --- -> borrar con confirmacion
rm -r -->borra directorio
Man -->información de los comandos
mkdir -->crea directorios
Pwd -->directorio de trabajo actual
kill PID(DEL PROCESO)  --> elimina el proceso

------------CREACION DE USUARIOS y GRUPOS-----------
adduser  nombre ---> crea usuario este es el usado
useradd   ---> crea usuario
userdel nombre---> borrar usuario
groupadd nombre---> crea grupo
groupmod -n oficina_madrid oficina_madrit   --->cambiar nombre de grupo
group del ---->borra grupo
adduser nombreUsuario nombreGrupo -->añadir a grupo
passwd usuario   -->cambiar contraseña





----INSTALAR Y DESINSTALAR
sudo apt-get install filezilla  -->para instalar filezilla por ejemplo
sudo apt -get aptitude --> toda sus dependecias salvo por otros archivos
sudo apt -get remove  -->desinstallar
sudo apt -get purge -->desinstallar

----------INFORMACION DEL KERNEL---------
uname   ---> informacion 
Opciones:
-s --muestra el nombre del kernel
-r --muestra la revisión (release) del kernel
-n --muestra el nombre por el que se identifica el sistema en la red
-m --muestra el tipo de arquitectura que se está utilizando
-v --muestra la versión del kernel
-p --muestra información sobre el procesador o unknown
-i --muestra la plataforma de hardware o unknown
-o --muestra el nombre del sistema operativo
-a --muestra toda la información sobre el tipo de sistema que se está utilizando. 
--En el siguiente orden / formato:
Nombre del kernel - hostname del nodo de red – revisión del kernel – Versión del kernel –
 nombre de la máquina- tipo de procesador –plataforma del hardware

XX: indica la serie principal del kernel. Hasta el momento sólo existe la serie 2. Este número cambia cuando la manera de funcionamiento del kernel ha sufrido una modificación importante.
YY: indica si la versión es de desarrollo o producción. Un número impar indica que es de desarrollo, uno par, que es de producción.
ZZ: indica revisiones menores dentro de una versión en las que se han corregido fallos de programación.
Ejemplo: 2.4.0. Kernel de la serie 2 (XX=2), versión de producción 4 ( YY=4 ya que es par), primera versión del 2.4 (ZZ=0).

--------INFORMACION DISTRIBUCION LINUX------
lsb_release   ----> muestra información de la distribución GNU/Linux del equipo
Opciones:
a - , –all -->Muestra toda la información lsb_release -a
-i, -id -->Muestra el nombre de la distribución GNU/Linux
-d, –description -->Muestra la descripción de la distribución
-r, -release -->Muestra la versión de la distribución
-c, -codename -->Muestra el código de la distribución
-s, -short -->Muestra la información solicitada en formato corto, sin el título inicial.
-h, -help -->Muestra la ayuda y finaliza
-v, -version -->Muestra la versión de la especificación LSB de la que es compatible y finaliza


------LISTADOS ls-----
ls /..  -->muestra archivos de despues de la barra
ls * -->Lee directorios y subdirectorios
ls -lSh -->muestra ordenados de mayor a menor (S) por tamaño
ls / -->ruta absoluta
ls -a -->muestra ocultos
Ls -i / -->visualizar la tabla de directorios ver inodos
ls -l / -->listado extendido, atributos de un archivo
stat nombre_archivo -->consultar info de un fichero
ln -d nombre_archivo nombre_enlace -->(sudo) enlace duro a directorios
ln -s  “””--> enlace simbólico
ls > nombre -->guardar el resultado de ls en ficheros
ls -d [a-z]??? -->Se especifica una serie de caracteres. Por ejemplo [a – z] todos los nombres que empiecen con minúsculas 
ls -d /etc/[!g]* -->s listar con el comando ls todos los archivos del directorio /etc que no comiencen con la letra «g» cuyo nombre tenga cualquier extensión 
ls s* -->Cualquier fichero que empiece por la letra «s» 
ls [!s]* -->Cualquier archivo que NO empiece por la letra «s» 
ls -d /bin/[a-b]* -->Archivos del directorio /bin que comiencen por las letras a y b con cualquier extensión de letras después. 
ls -d /bin/[a-b]??? -->Archivos del directorio /bin que comiencen por las letras a y b con tres letras después 
ls -d /bin/[!a-g]??? 
stat ... --> informacion de archivo de atributos


----------MOSTRAR CONTENIDOS FICHEROS Y CREAR-------
touch  --->crear
touch ficheros.txt-->crea archivo
cat /etc/shells -->muestra  shell posibles
echo $0   --->shell utilizado
sudo /cat/proc/sys/vm/su
cat ---->muestra contenido
more ---->muestra contenido de forma parcial dando enter
less ----> como more pero con avance de pagina hacia delante y hacia atras
head --->muestra las 10 priemras lineas
head -n4 ---->muestra las 4 primeras lineas
tail --->muestra las 10 ultimas
tail -n4--->muestra las 4 ultimas
tail -n1  -->muestra unltima fila
wc -l --> numero de linas
wc -w   --> cuenta palabras
wc -c   -->cuenta bytes
wc -m --> numero de caracteres
wc -L --->longitud de linea mas larga
cat <<EOF>myfile1 ---> crea y puedes escribir y para salir EOF
cat echo line one>myfile--->crea escribiendo esa linea sin cat crea con cat muestra
cat echo line two>>myfile --->modifica
Editores básicos: nano, gedit 
Editores avanazdos: vi , emacs

------MUESTRA DE PROCESOS------
ps -->muestra los procesos
-e	-->visualiza información sobre "todos" los procesos del sistema.
l	-->muestra información más completa sobre los procesos (difiere a poner el signo menos delante).
-f	-->visualiza los parámetros con los que se levantó el proceso.
-x	-->muestra procesos que no están controlados por ninguna terminal.
-uusuario	-->visualiza información de los procesos del usuario indicado.
-a	-->obtiene todos los procesos que estén asociados a una terminal.
-r	-->sólo procesos cuyo estado sea ejecutándose.
-H	-->muestra la jerarquía de procesos.
-txx -->los procesos asociados a la terminal xx.
aux	-->muestra información adicional sobre todos los procesos que se están ejecutando en el sistema y no solo los de una terminal.
pstree   -->muestra procesos como un arbol muestra los padres 

--------ENLACES-------
ln -d -->enlace duro
ln -s -->enlace simbolico
rm o unlin -->para borrar

-----REDIRECIONAMIENTO---
>> añade al final
>reescribe
ej ls>contenido.txt

cat nombre mostrar el resultado de ls >
cat fich > fich2 -->Copiará el contenido del fichero fich al fichero fich2, sobrescribiendo lo que antes hubiese en fich2. 
mail alcortes < fich -->Mandará un correo a alcortes con el contenido del fichero fich. 
cat  fich > fich3 -->Meterá en el fichero fich3 el contenido del fichero fich. 
cat fich >> fich3  -->Con esto ponemos el contenido del fichero fich a continuación de lo que contenía el fichero fich3. 
$ echo line one > myfile
$ echo line two >> myfile
$ echo line three >> myfile crear contenido en un archivo sin editor
$ cat << EOF > myfile
> line one
> line two
> line three
> EOF  otra manera de hacerlo

------TUBERIA---------
ls | grep "txt" -->muestra solo los txt
ls | grep "txt" |wc -l   --> muestra el numero de los txt

ps -->muestra procesos activos
ps | tee file.ext  -->muestra los procesos y las pasas a file


----COPIAS DE SEGURIDAD------
tar -->(creacion de copias)
tar [-opcion] archivo.tar archivo
     -c -->copia
     -x -->extraer
     -t -->mostrar
     -f -->siguiente argumento es el nombre del archivo copia
     -v -->muestra por pantalla el proceso
ej tar tvf archivo.tar archivo  muestra el archivo tar

tar xvf ../copia.tar  ->descomprime el tar
tar xzvf ../backup.tgz  -->lo descomprime mostrando el proceso
tar cvf crear archivo de respaldo
tar cvf respaldo.tar /etc

---------COMPRIMIR--------
tar -z -->compresion de archivos .tgz

gzip -->tambien para la compresion
gzip [opciones] archivo .gz
−d --decompress –uncompress Descomprime.
−f –force -->Fuerza la compresión o descompresión incluso si el archivo tiene varios enlaces o si el archivo correspondiente ya existe (sin esta opción el sistema pide verificación antes de sobrescribir), o si los datos comprimidos se leen de, o se escriben en, una terminal. Si los datos de entrada no están en un formato reconocido por gzip, y si
-- se ha dado también la opción --stdout, copia los datos de entrada a la salida estándar sin cambiarlos.
−l –list -->Para cada archivocomprimido, lista los siguientes campos: compressed: el tamaño del archivocomprimido
--uncompr: el tamaño del archivodescomprimido
--ratio: relación de compresión (0.0% si no se conoce) uncompressed_name: nombre del archivodescomprimido

--verbose, se muestran asimismo los siguientes campos: method: método de compresión
crc: el CRC de 32 bits de los datos descomprimidos date & time: tiempos del archivodescomprimido

−r –recursive Recorre la estructura de directorios recursivamente. Si cualquiera de los nombres    de    archivoespecificados    en    la    línea    de    órdenes    son   directorios, gzip descenderá en el directorio y comprimirá todos los archivosque encuentre allí (o los descomprimirá en el caso de gunzip).


zcat ---> muestra conenido de archivo comprimido ej:
zcat archivo.gz

--DESCOMPRIMIR
gunzip [opcion] archivo.tgz o archivo.gz

split -->divide el archivo en archivos de 1000 lineas
split [opcion] archivo
       -b :divide en megas
       -c : lo mismo pero sin lineas divididas no las parte
       --ej:
split -b 20M archivo
split -l 8000 informe- : crea divisiones de 800 lineas del archivo informe con los nombres: informe aa informe ab .....
split -15 lista_com :divide en listas de 15 lineas

diff -> comprar archivos
diff [-opciones] archivo1 archivo2
-a -->trata a todos los archivos como de texto y los compara línea por línea.
-b -->ignora los espacios y los tabuladores en la línea, cuando se quiere comparar dos archivos de texto que tienen márgenes diferentes.
-B -->no considera cambios consistentes en sólo insertar y borrar líneas en blanco.
-r -->cuando compara los archivos en los directorios, lo hace en forma recursiva.
-e -->genera un edit script. Un archivo editable.

cmp -> compara byte a byte
cmp archivo1 archivo2

--------PERMISOS-------
rwx rwx rwx
Primer número: permisos de propietario
Segundo número: permisos de grupo.
Tercer número: permisos para el resto.
-permisos (r,w,x-)
-usuarios (u,g,o,a)
Chmod: cambia los permisos
       -modo simbólico: 
ej: chmod a+r notas --> da permiso de lectura a todos los usuarios
ej:chmod og-x archivo -->  otros y grupo le quita permiso de ejecución de archivo
ej: chmod ug+rx, o-w notas

       -modo absoluto : chmod u={r,w,x}, g={r,w,x}, o={r,w,x} si no especifica usuario es a todos
ej:
Deberá obtener los siguientes permisos: r - x r - - - - -
chmod u=rx,g=r,o=--- copiaclave2 


       -modo numerico: chmod 775     775 rwx

--------PROGRAMADOR DE TAREAS CRON--------
PROGRAMADOR DE TAREAS
crontab -l --->lista acciones del cron
crontab -r --->borra el cron
crontab -e ---> eliges editor para para administrador regular de tareas en 2 plano
(0a59)minuto (0a23)hora (1a31)diaMes (1a12)mes (0a6)diaSemana      sustituir por * es cualquiera 
ej. 30 10 * * 1 who >> /home/home/usuario/quienEstaConectado.txt
a) Ejecutar los miércoles y viernes a las 23:30h. 
30 23 * * 3,5 date >> /home/usuario/registro.txt
b) Ejecutar los lunes cada 2 minutos. (probar primero con el día de la semana de hoy).
hoy :  */2 * * * 3  date >> /home/usuario/registro.txt
*/2 * * * 1  date >> /home/usuario/registro.txt
c) Ejecutar cada 8 horas el primer viernes del mes.
 00   */ 8  1-7   *   5  date >> /home/usuario/registro.txt
d) Ejecutar 4 veces al año, a las 02:00h.
00  2   6  1,4,6,9   *  date >> /home/usuario/registro.txt
e) Ejecutar una vez en los días 1 y 15 de los meses que van de octubre a junio.
 *    *   1,15    1-6,10-12   * date >> /home/usuario/registro.txt















METACARACTERES
?: Se sustituye por cualquier carácter. 
[]: Se utiliza para especificar una lista de caracteres o un rango. Si se quiere especificar un rango se debe ubicar el carácter - entre el primer y el último carácter del rango. Se sustituye por un carácter de la lista o del rango. 
 ^: Indica que la expresión comienza al principio de la línea. 
$: Indica el final de línea. 
* se refiere a cualquier conjunto de caracteres, incluido ningún carácter.
 z* cualquier conjunto de caracteres que empiece por z. 
 *z cualquier conjunto que acabe en z. 
 [lw]* cualquier conjunto que empiece por l o w. 
*[lw] cualquier conjunto que termine en l o w. 
[0-9]* cualquier conjunto que empiece por un dígito. 
*[0-9] cualquier conjunto que acabe en un dígito. 
 [a-z]* cualquier conjunto de caracteres que empiece con una letra minúscula. 
 *[a-z] cualquier conjunto de caracteres que acabe con una letra minúscula. 
 jo?[am]?.txt cualquier fichero de texto (.txt) cuyo nombre comience con jo seguido de un carácter cualquiera, a continuación el carácter debe ser o unaa a o una m y luego otro carácter cualquiera. joumi.txt encajaría, al igual que jotai.txt, por ejemplo. 
 un signo ! excluimos el carácter definido 
 > y >>: Para redirigir la salida estándar. 
 ~: Se sustituye por el directorio base del usuario que lo ejecuta. 
$((expresión)): Se evalúa la expresión y se sustituye en la línea original por el resultado de la misma. 

Ejemplos en ls
