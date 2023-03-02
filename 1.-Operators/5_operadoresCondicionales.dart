void main() {
  int edad = 15;
  int edadMin = 18;
  int? x; //coloque el signo ? para decirle a dart que la variable x sera nula.

  edad >= edadMin ? print('Puedes entrar') : print('No puedes entrar');
  // si se cumple la condicion 15 >= 18 entonces imprime 'Puedes entrar'
  // si no se cumple imprime 'No puedes entrar'.

  print(x ?? 10);
  //esto permite indicar que si la variable es nula, se le asigne el valor 10.
}
