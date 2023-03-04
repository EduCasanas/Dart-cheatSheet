void main() {
  bienvenida('Edu', 'Nuevo');

  bienvenida('Jorge', 'Antiguo');

  bienvenida('George', 'Top');
}

//Funcion que da bienvenida
bienvenida(String nombre, String tipo) {
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
      mensaje = 'Por ser top aqui';
      break;
  }

  print(
      '$nombre, bienvenido a tu app en flutter! $mensaje tienes un $descuento % de descuento');
  descuentoUsuario(descuento!);
}

//Funcion que calcula el descuento del usuario
descuentoUsuario(int descuento) {
  int precio = 1456;

  double aplicarDescuento = (precio * descuento) / 100;
  double precioTotal = precio - aplicarDescuento;

  print('Tu precio especial a pagar es: $precioTotal');
}
