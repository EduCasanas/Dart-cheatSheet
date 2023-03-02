void main() {
  int compra = 100;
  int precioMax = 2000;
  bool esFrecuente = true;
  bool tieneDeuda = false;

  print(compra >= precioMax && esFrecuente); // operador AND

  print(compra >= precioMax || esFrecuente); //operador OR

  print(compra >= precioMax || esFrecuente && tieneDeuda);
  // false or (true and false)= false or (false)=====> false.
  print(compra >= precioMax || esFrecuente && !tieneDeuda);
  //          false         or (   true    and negar(false))  ====>true.
  // el operador NOT===> ! niega el valor del tipo bool.
}
