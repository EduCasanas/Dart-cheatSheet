void main() {
  int edad = 22.2.toInt(); //convierte de decimal a entero.
  print(edad); //imprime 22.
  print(edad.runtimeType); //edad es del tipo int.

  double precio = double.parse('25.3');
  print(precio); //imprime 25
  print(precio.runtimeType); //precio es del tipo double.

  int edadJuan = int.parse('28'); //convierte el string '28' a un entero.

  String name = 300.toString(); //convierte 300 a una cadena.
}
