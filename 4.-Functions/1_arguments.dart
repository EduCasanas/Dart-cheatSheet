//ARGUMENTOS EN FUNCIONES
void main() {
  bienvenida('Edu');

  bienvenida('Jorge');

  bienvenida('George');
}

//funcion que da la bienvenida en base al texto de entrada y
//calcula el descuento

//Funcion que recibe 1 argumento

bienvenida(String nombre) {
  int descuento = 50;
  int precio = 1456;

  print('$nombre, bienvenido a tu app en flutter!');
  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;

  print('Tu descuento especial es: $precioTotal');
}
