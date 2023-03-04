//FUNCIONES
void main() {
  print('Edu');
  bienvenida();

  print('Jorge');
  bienvenida();
}

//funcion que da la bienvenida y calcula el descuento
bienvenida() {
  int descuento = 50;
  int precio = 1456;

  print('Bienvenido, a tu app en flutter!');
  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;

  print('Tu descuento especial es: $precioTotal');
}
