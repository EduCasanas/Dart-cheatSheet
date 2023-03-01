void main() {
  //variable tipo entero
  int edad = 20;
  //variable decimal
  double precio = 25.3;
  //variable tipo texto
  String name = 'Jorge';
  //variable booleana
  bool esUsuarioPremium = true;
  //variable dinamica que dart se encarga de determinar el tipo
  dynamic puntos = 500;
  var puntos1 = '200';
  final puntos2 = '700';
  const PUNTOS3 = '2000'; //las constantes siempre se escriben en Mayusculas
  //diferencias entre dynamic/var/final/const
  puntos =
      '500'; //dynamic permite pasar de un entero a modificar el valor por un string.
  puntos1 =
      200; //var nos da 'error' porque ya se definio como un string y ahora se esta cambiando por un entero y no permite.
  puntos2 =
      '700'; //da error porque la variable final se la asigna una sola vez y no puede cambiar por el resto del programa.
  PUNTOS3 =
      '2000'; //da error porque al igual que final, const es una constante que no se va a modificar, por ejemplo: pi=3.14
  //DIFERENCIA ENTRE FINAL VS CONST
  // final no es 100% inmutable, puede cambiar; a diferencia de const, que si es 100% inmutable.
  final lista1 = [1, 2, 3];
  lista1.add(4);
  //como observamos final inicialmente era una lista del 1 al 3, pero luego se anadio el 4.
  const LISTA2 = [1, 2, 3];
  LISTA2.add(4);
  //aqui da error porque la lista es 100% inmutable, es decir no se puede cambiar.
}
