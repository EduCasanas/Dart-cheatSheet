void main() {
  List<String> colores = ['Azul', 'Verde', 'Rosa', 'Morado', 'Gris'];
  //imprime una sublista
  print(colores.sublist(2, 4)); // [Rosa, Morado]
  print(colores.sublist(2)); //[Rosa, Morado, Gris]
  //ALEATORIO
  colores.shuffle(); // ordena la lista de manera aleatorea.
  print(colores); //[Verde, Rosa, Azul, Gris, Morado]
  //REVERSA
  print(colores.reversed); //imprime los elementos al reves

  //WHERE ubica los elementos dentro de la lista
  print(colores.where((String color) => color == 'Morado')); //si hubiera
  //elementos repetidos, los mostraria a ambos, ya que son los que
  //cumplieron la condicion.

  //SUMA DE TODOS LOS ELEMENTOS

  List<int> numeros = [1, 2, 3, 4, 5];
  print(numeros.reduce((value, element) => value + element));
  //esto suma todos los elementos dando 15.
  //para ello el value toma el valor de 1 y el element 2, la suma da 3, este 3
  //se almacena en el value y el element ahora es 3, la nueva suma da 6 que
  //se almacena en value y asi sucesivamente.

  //suma todos los elementos a partir de un valor inicial
  var resultado = numeros.fold(10, (value, element) => value + element);
  print(resultado);
}
