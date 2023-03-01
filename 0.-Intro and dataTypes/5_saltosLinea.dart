//ESCAPARA CARACTERES Y SALTO DE LINEA
void main() {
  //Utilizar caracteres que dart reconoce como parte de su uso.
  print(
      '\$1000'); //como vimos anteriormente el signo $ se utilizaba para usar una variable en una cadena, pero con la \ permite utilizar el simbolo.
  print(
      'Aqui va un texto entre comillas: \'hola mundo\'y termina.'); //aqui se muestra un texto entre comillas.
  //SALTO DE LINEA
  print(
      'Hola bienvenido a \ndart course'); //imprime en la siguiente linea a partir de \n
  //SALTOS DE LINEA EN PARRAFOS
  print('''Aqui va 
  un texto
  cualquiera dentro de un parrafo'''); //permite escribir un parrado respetando los saltos de linea.
}
