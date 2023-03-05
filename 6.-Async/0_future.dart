//Programacion SINCRONA una cosa se ejecuta detras de otra
/*
void main() {
  inicio();
  accion();
  fin();
}

//funcion inicial
inicio() {
  print('Inicio');
}

//funcion 'pesada'
accion() {
  for (int i = 0; i <= 10; i++) {
    print('Accion $i');
  }
}

//funcion final
fin() {
  print('Fin');
}
*/

/* En consola sale:
Inicio
Accion 0
Accion 1
Accion 2
Accion 3
Accion 4
Accion 5
Accion 6
Accion 7
Accion 8
Accion 9
Accion 10
Fin
*/
//Esto causaria un problema si en realidad la segunda funcion fuera
//muy pesada de ejecutar, ya que el programa tendria que esperar que termine
//de ejecutar esa parte para ejecutar la funcion final.

//PROGRAMACION ASINCRONA
/*

void main() {
  inicio();
  accion();
  fin();
}

//funcion inicial
inicio() {
  print('Inicio');
}

//funcion 'pesada'
Future<void> accion() async {
  return Future.delayed(
      Duration(seconds: 4), () => print('Aparezco despues de 4 segundos'));
}

//funcion final
fin() {
  print('Fin');
}
*/
/*imprime:
Inicio
Fin
Aparezco despues de 4 segundos
*/

//RETORNAR UN VALOR EN una funcion future ASINCRONA
void main() {
  inicio();
//then permite obtener un string de una funcion async
//whenComplete sirve para saber que se ejecuto la funcion async
//catchError me arroja el error que lanzo mi funcion async
  accion().then((String value) {
    print('Este es el mensaje $value');
  }).whenComplete(() {
    print('Este mensaje confirma que se ejecuto la funcion asincrona');
  }).catchError((error) {
    print('Este es el mensaje ${error.toString()}');
  });

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
