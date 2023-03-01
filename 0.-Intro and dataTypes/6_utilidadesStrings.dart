//UTILIDADES DE LOS STRINGS
void main() {
  //Para saber si la palabra que le pasamos esta contenida dentro de la variable.
  String name = 'Educa Casanas';
  print(name.contains(
      'Educa')); //Educa si esta contenida en la varibale name, por lo tanto da true.
  print(name.isEmpty); //Pregunta si name esta vacio, y retorna false.
  print(name.toUpperCase()); //convierte el texto a mayusculas.
  print(name.toLowerCase()); //convierte el texto a minusculas.
  print(name
      .substring(6)); //obtiene la cadena a partir de la posicion 6 en adelante.
  print(name.substring(6,
      9)); //obtiene la cadena a partir de la posicion 6 hasta la posicion 9-1.
  print(name.length); //cuenta los caracteres que tiene name.
  print(name.replaceAll('Casanas', 'Cuenca')); //reemplaza Casanas por Cuenca.
}
