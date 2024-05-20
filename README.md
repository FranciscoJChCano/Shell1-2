Variables:

Ejercicio 1:
Explicación:

#!/bin/bash: Indica que el script debe ser ejecutado con Bash.

nombre="Francisco", edad=32, ciudad="Huelva": Declara tres variables (nombre, edad, ciudad) y les asigna valores.

echo "Mi nombre es $nombre tengo $edad años y vivo en $ciudad": Imprime un mensaje que incluye los valores de las variables utilizando la sintaxis $variable.

Ejercicio 2:

Explicación:

echo "Ingresa tu actividad favorita:": Muestra un mensaje solicitando al usuario que ingrese su actividad favorita.

read actividad: Lee la entrada del usuario y la almacena en la variable actividad.

echo "Ingresa tu comida favorita:": Muestra un mensaje solicitando al usuario que ingrese su comida favorita.

read comida: Lee la entrada del usuario y la almacena en la variable comida.

echo "Mi actividad favorita es $actividad. Mi comida favorita es $comida": Imprime un mensaje que incluye las entradas del usuario.

Parámetros:

Ejercicio 1:

Explicación:

Estas líneas verifican si el número de parámetros pasados al script es menor que 3.

if " $# -lt 3 "; then: Comprueba si la cantidad de argumentos ($#) es menor que 3 (-lt 3).
echo "Incorrecto , Es necesario realizar 3 parámetros": Si la condición es verdadera, se imprime el mensaje de error "Incorrecto, Es necesario realizar 3 parámetros".
exit 1: El script termina con un código de salida 1, indicando un error.

Ejercicio 2:

function parametros(): Declara una función llamada parametros.

fichero="carpeta personal": Declara una variable local fichero dentro de la función y le asigna el valor "carpeta personal".

echo "En el fichero $fichero existen" $# "parametros": Utiliza el comando echo para imprimir un mensaje. "$fichero" se expande a "carpeta personal" y "$#" se expande al número de argumentos que se pasan a la función parametros.

parametros 1 2 3 4 5: Llama a la función parametros con cinco argumentos (1 2 3 4 5).

$(...): Captura la salida de la función parametros y la asigna a la variable texto.

// echo "$texto" Este comando imprime el contenido de la variable texto en la terminal.

Condicionales:

Ejercicio 1:

if [ "$(whoami)" != "root" ]; then: Verifica si el usuario que ejecuta el script no es root.

$(whoami) ejecuta el comando whoami que retorna el nombre del usuario actual.

echo "No tiene acceso como root": Imprime un mensaje de error si el usuario no es root.

fi: Finaliza la estructura condicional if.

Ejercicio 2:

Explicación:

echo "Ingrese el primer número:" y read n1: Solicita al usuario que ingrese el primer número y lo almacena en n1.

echo "Ingrese el segundo número:" y read n2: Solicita al usuario que ingrese el segundo número y lo almacena en n2.

if "[ "$n1" -eq "$n2" ]"; then: Verifica si n1 es igual a n2.
elif [ "$n1" -gt "$n2" ]; then: Verifica si n1 es mayor que n2.
else: Caso contrario, n2 es mayor que n1.
fi: Finaliza la estructura condicional if.

Ejercicio 3:

Explicación:

echo "Ingrese un número:" y read numero: Solicita al usuario que ingrese un número y lo almacena en numero.

if [ $((numero % 2)) -eq 0 ]; then: Verifica si numero es divisible por 2 usando la operación de módulo %.

else: Si no es divisible por 2, ejecuta esta sección.
fi: Finaliza la estructura condicional if.

Sustitución de comandos:

Ejercicio 1:

Explicación:

echo "Ingrese su fecha de nacimiento (YYYY-MM-DD):" y read fecha_nacimiento: Solicita al usuario que ingrese su fecha de nacimiento y la almacena en fecha_nacimiento.

fecha_actual=$(date +"%Y-%m-%d"): Obtiene la fecha actual en el formato YYYY-MM-DD y la almacena en fecha_actual.

edad=$(echo $((($(date -d $fecha_actual +%s) - $(date -d $fecha_nacimiento +%s)) / 31536000))): Calcula la edad en años.

date -d $fecha_actual +%s y date -d $fecha_nacimiento +%s convierten las fechas a segundos desde el epoch.

La diferencia de estos segundos se divide por 31536000 (segundos en un año) para obtener la edad.

echo "Tienes $edad años.": Imprime la edad del usuario.

Bucles:

Ejercicio 1:

La "shebang" indica que el script debe ejecutarse utilizando el intérprete de bash.

pid_script=$$: Asigna el PID del proceso actual del script a la variable pid_script. El $$ es una variable especial en bash que contiene el PID del proceso actual.

intentos=0: Inicializa la variable intentos a 0. Esta variable se utilizará para contar cuántos intentos ha hecho el usuario.

echo "Adivina el PID del script:": Muestra un mensaje pidiendo al usuario que adivine el PID.

read intento: Lee la entrada del usuario y la guarda en la variable intento.

intentos=$((intentos + 1)): Incrementa la cuenta de intentos en 1.

while [ "$intento" != "$pid_script" ]; do: Inicia un bucle while que continuará ejecutándose mientras el valor de intento no sea igual al valor de pid_script.

if [ "$intento" -gt "$pid_script" ]; then: Verifica si el intento del usuario es mayor que el PID del script.

echo "El PID ingresado es mayor": Si el intento es mayor, muestra este mensaje.

else: Si el intento no es mayor (es menor o igual):
echo "El PID ingresado es menor": Muestra este mensaje si el intento es menor.

fi: Termina la estructura if.

echo "Intenta de nuevo:": Pide al usuario que intente de nuevo.
read intento: Lee el nuevo intento del usuario.

intentos=$((intentos + 1)): Incrementa la cuenta de intentos en 1.

done: Termina el bucle while. Si el usuario adivina correctamente, el bucle se rompe y el script continúa.

echo "¡Felicidades! Has adivinado el PID del script: $pid_script": Felicita al usuario por haber adivinado correctamente e imprime el PID.

echo "Número de intentos: $intentos": Muestra el número de intentos que hizo el usuario.

Ejercicio 2:

Explicación:

echo "Ingrese el nombre del archivo a agregar:" y read nombre_archivo: Solicita al usuario que ingrese el nombre de un archivo a crear.

touch "$nombre_archivo": Crea un archivo vacío con el nombre proporcionado.

echo "Archivo '$nombre_archivo' creado.": Informa al usuario que el archivo ha sido creado.

sleep 3: Espera 3 segundos.

echo "Lista de archivos actual:" y ls: Muestra la lista actual de archivos en el directorio.

echo "¿Desea borrar un archivo? (Sí/No):" y read respuesta: Pregunta al usuario si desea borrar un archivo.

if [ "$respuesta" = "Sí" ]; then: Verifica si la respuesta es "Sí".

echo "Ingrese el nombre del archivo a borrar:" y read archivo_borrar: Solicita el nombre del archivo a borrar.

echo "Ingrese el formato del archivo a borrar:" y read formato_borrar: Solicita el formato del archivo a borrar.

if [ -f "$archivo_borrar.$formato_borrar" ]; then: Verifica si el archivo existe.

rm "$archivo_borrar.$formato_borrar": Borra el archivo.

else: Si el archivo no existe, informa al usuario.

echo "Ok, no borraremos ningún archivo.": Informa que no se borrará ningún archivo si la respuesta es diferente a "Sí".

Aqui finaliza los ejercicios de Shell.
