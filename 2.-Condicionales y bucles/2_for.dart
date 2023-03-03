// CICLO FOR se utliza cuando sabe cuantas veces se quiere realizar la misma tarea
void main() {
  // se inicializa la variable i, se establece una condicion, y el incremento sera
  //el cambie la variable i hasta cuando se termine de cumplir la condicion.
  print('Tabla del 1:');
  for (int i = 1; i <= 10; i++) {
    print('1 * $i = ${1 * i}');
  }

  //FOR ANIDADO
  for (int j = 1; j <= 10; j++) {
    print('Tabla del $j:');
    for (int i = 1; i <= 10; i++) {
      print('$j * $i = ${j * i}');
    }
  }
}
