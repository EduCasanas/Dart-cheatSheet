//CONCATENACION E INTERPOLACION

void main() {
  //CONCATENACION es la union de variables.
  print('hola ' + 'mundo'); //concatenacion de la palabra mundo.

  String nombre = 'jorge';
  print('hola ' + nombre); //concatena una variable.

  //INTERPOLACION es agregar una variable dentro de un string.
  int cuota = 200;
  print(
      'el pago de la cuota es: $cuota'); // se agrega una variable que no es String con $

  String apellido = 'Casanas';
  print(
      'El apellido tiene ${apellido.length} letras'); //cuando se requierre hacer algun uso de esa variable o que implique algun calculo se encierra entre llaves {}.
}
