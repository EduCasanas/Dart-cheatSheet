void main() {
  //Map que posee cualquier tipo de dato en este caso string y integer.

  Map datos = {
    'nombre': 'Edu',
    'apellido': 'casanas',
    'telefono': 0952321552,
    'email': 'edu@gmail.com'
  };

  //Map de un solo tipo de dato, en este caso string
  Map<String, String> datos2 = {
    'nombre': 'Edu',
    'apellido': 'casanas',
    'telefono': '0952321552',
    'email': 'edu@gmail.com'
  };

  //con la clave 'telefono' nos da su valor que es el numero.
  print(datos2['telefono']); //0952321552

  //elimina el dato de email
  datos2.remove('email');
  print(datos2); //{nombre: Edu, apellido: casanas, telefono: 0952321552}

  //modificar un valor
  datos2['nombre'] = 'jorge';
  print(datos2); //{nombre: jorge, apellido: casanas, telefono: 0952321552}
  //agregar una clave y valor nueva
  datos2['codigoPostal'] = '593';
  print(datos2);
  //{nombre: jorge, apellido: casanas, telefono: 0952321552, codigoPostal: 593}

  //RECORRER UN MAP

  Map<String, String> datos3 = {
    'nombre': 'Edu',
    'apellido': 'casanas',
    'telefono': '0952321552',
    'email': 'edu@gmail.com'
  };
  for (String key in datos3.keys) {
    print('Key : $key | Value: ${datos3[key]}');
    //imprime:
    /*
    Key : nombre | Value: Edu
    Key : apellido | Value: casanas
    Key : telefono | Value: 952321552
    Key : email | Value: edu@gmail.com
    */
  }
  //SI SOLO QUIERO LOS VALORES Y NO LAS LLAVES(KEYS)
  Map<String, String> datos4 = {
    'nombre': 'Edu',
    'apellido': 'casanas',
    'telefono': '0952321552',
    'email': 'edu@gmail.com'
  };
  for (String value in datos4.values) {
    print('Value: $value');
  }
  //imprime:
  /*
    Value: Edu
    Value: casanas
    Value: 0952321552
    Value: edu@gmail.com
  */
  //OTRA FORMA DE RECORRER EL MAP
  Map<String, String> datos5 = {
    'nombre': 'Edu',
    'apellido': 'casanas',
    'telefono': '0952321552',
    'email': 'edu@gmail.com'
  };
  datos5.forEach((key, value) => print('key: $key | valor: $value'));
  /*
  imprime:
  key: nombre |valor: Edu
  key: apellido |valor: casanas
  key: telefono |valor: 0952321552
  key: email |valor: edu@gmail.com
  */
}
