void main() {
  int edadMax = 30;
  int edadMin = 18;
  int edad = 15;
  //Mayor
  print(edad > edadMin); // 15 mayor que 18 da false.
  print(edad < edadMin); // 15 menor que 18 da true.

  print(edad >= edadMin); // 15 mayor o igual que 18 da false.
  print(edad <= edadMin); // 15 menor o igual que 18 da true.

  print(15 == edad); // 15 es igual al valor de la variable edad, true.

  print(edad != edadMin); //15 es diferente a 18, true.
}
