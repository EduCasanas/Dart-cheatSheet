//AWAIT le indica a la funcion a ejecutar que primero debe esperar la respuesta
//para poder continuar la ejecucion de la funcion que le sigue, a diferencia
//de la funcion asincrona que saltaba a ejecutar la siguiente funcion sin
//esperar primero que termine de ejecutarse la funcion "pesada".
void main() async {
  inicio();

  String value = await accion();
  print('Este es el valor: $value');

  fin();
}

//funcion inicial
inicio() {
  print('Inicio');
}

//funcion 'pesada'
Future<String> accion() async {
  return Future.delayed(
      Duration(seconds: 4), () => ' que aparece despues de 4 segundos');
}

//funcion final
fin() {
  print('Fin');
}
/*imprime:
Inicio
Fin
Este es el mensaje  que aparece despues de 4 segundos
*/

/*
Inicio
Fin
Este es el mensaje  que aparece despues de 4 segundos
Este mensaje confirma que se ejecuto la funcion asincrona
*/
