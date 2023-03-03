//WHILE AND DO-WHILE
void main() {
  int edad = 13;
  //WHILE

  while (edad <= 18) {
    print('Tiene $edad');
    edad++;
  }

  //DO-WHILE
  bool esMenor = false;

  do {
    if (edad >= 18) {
      //si se cumple la anterior condicion, imprime el mensaje y se asigna a la
      //variable esMenor = false, por lo tanto no ejecuta el else, y a la
      //variable edad la incrmenta y en el while como esMenor cambio a false,
      //se termina el programa.
      print('---Es mayor $edad---');
      esMenor = false;
    } else {
      //si el if no se cumple, ejecuta el 'else' e imprime el mensaje, luego
      //cambia el valor de la variable esMenor de false que fue el valor inicial
      //a true, continua con incrementar el valor de edad, y va al while, ya que
      //la varibale esMenor se acabo de actualizar a true, continua ejecutando
      //el while, hasta cuando llegue a ser false la variable esMenor.
      print('Tiene $edad');
      esMenor = true;
    }
    ++edad;
  } while (esMenor);
}
