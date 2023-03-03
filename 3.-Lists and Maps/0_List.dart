//LISTAS
void main() {
  //Lista sin importar el tipo de variable

  List colores = ['Azul', 'Verde', 'Rosa', 'Morado', 1];
  print(colores[3]);

  //Lista de un tipo de variable especifico
  List<String> colores2 = ['Azul', 'Verde', 'Rosa', 'Morado', 'Gris'];
  colores2.removeAt(3); //elimina el elemento de la posicion 3
  colores2[0] = 'Naranja'; //cambia el 'Azul' por 'Naranja.
  colores2.add('Celeste'); //agrega un nuevo color a la lista.
  print(colores2);

  //Recorrido de listas

  for (String i in colores2) {
    print(i);
  }

  //Otra forma de recorre la lista

  for (int i = 0; i < colores2.length; i++) {
    print(colores2[i]);
  }

  // Otra forma de recorrer la lista
  colores2.forEach((String color) => print(color));
}
