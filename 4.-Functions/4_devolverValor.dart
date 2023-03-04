//PARAMETROS
void main() {
  bienvenida('Edu', 'Nuevo');

  bienvenida('Jorge', 'Antiguo');

  bienvenida('George', 'Top', 9);
}

//Funcion que da bienvenida
//parametro opcionales van entre [] o {}
bienvenida(String nombre, String tipo, [int? posicion]) {
  // tambien podemos hacerlo opcional usando {int posicion} pero al llamar la
  //funcion le pasaremos el parametro por su nombre asi:
  //bienvenida('George', 'Top', posicion : 9);
  int? descuento;
  String? mensaje;

  switch (tipo) {
    case "Nuevo":
      descuento = 50;
      mensaje = 'Por ser nuevo aqui';
      break;
    case "Antiguo":
      descuento = 60;
      mensaje = 'Por ser antiguo aqui';
      break;
    case "Top":
      descuento = 70;
      mensaje = 'Por ser top aqui y tener el lugar $posicion';
      break;
  }

  print(
      '$nombre, bienvenido a tu app en flutter! $mensaje tienes un $descuento % de descuento, el precio a pagar seria de \$${descuentoUsuario(descuento!)}');
}

//Funcion que calcula el descuento del usuario
double descuentoUsuario(int descuento) {
  //podemos especificar el tipo de dato que retorna la funcion
  int precio = 1456;

  double aplicarDescuento = (precio * descuento) / 100;

  return precio - aplicarDescuento;
}
