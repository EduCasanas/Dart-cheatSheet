void main() {
  int a = 10;
  int b = 20;
  int c = 30;
  int d = 40;

  print('Pre-incremento ${++a}');
  //incrementa en 1 unidad el valor de a. imprime 11
  print('resultado $a'); // imprime 11

  print('Pos-incremento ${b++}'); //imprime a=20
  print('resultado $b'); //imprime a=21
  // esto es util cuando queremos hacer una operacion antes de que incremente
  //el valor de la varibale, y tambien utilizar el resultado del pos incremento.
  print('Pre-decremento ${--c}'); //imprime 29
  print('resultado $c'); //imprime 29

  print('Pos-decremento ${d--}'); //imprime 40
  print('resultado $d'); //imprime 39
}
