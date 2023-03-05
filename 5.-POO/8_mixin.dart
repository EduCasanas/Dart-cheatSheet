//MIXIN permite crear otra una nueva clase Padre con otros metodos y atributos
//que queremos utilizar en una clase hija que ya ha heredado metodos y atributos
//de una clase Padre, pero que por nuevas necesidades tenemos que crear esta
//nueva clase Padre con otros atributos y metodos a utlizar, no podemos usar
//de nuevo la palabra reservada 'extends' para heredar de esa nueva clase Padre,
//ya que las clases hijas solo pueden heredar una sola vez, para eso se usan
//los mixin con la palabra reservada 'with'.
void main() {
  Alumno maria = Alumno();
  maria.setName = 'Maria';
  maria.setCalificaciones = [10, 9, 7];
  maria.obtenerPromedio();

  Profesor pedro = Profesor();
  pedro.setName = 'Pedro';
  pedro.setRfc = 'ABCD123';
  pedro.tieneRFC();
}

//Cualquier cosa que se haga en la clase Alumno o Profesor, debera
//ejecutar la funcion de dar la bienvenida, en esta caso las interfaces
//dicen que debe hacer pero no como. El como lo debe hacer se lo hace dentro
//de cada clase, con un @override

//INTERFACE
class Escuela {
  bienvenida() {}
}

abstract class Persona implements Escuela {
  String _name = "";
  String _apellido = "";
  int _edad = 0;
  String _telefono = "";

  get getName => this._name;
  set setName(String value) => this._name = value;
}

class Alumno extends Persona {
  List<double> _calificaciones = [];

  List<double> get getCalificaciones => _calificaciones;
  set setCalificaciones(List<double> calificaciones) {
    _calificaciones = calificaciones;
  }

  //METODO es una funcion o un calculo que realiza el objeto
  obtenerPromedio() {
    bienvenida();
    if (_calificaciones.isEmpty) {
      return 0.0;
    } else {
      print('El promedio del alumno ${this._name} es: ${_calcularPromedio()}');
    }
  }

  _calcularPromedio() {
    return this._calificaciones.reduce((value, element) => value + element) /
        this._calificaciones.length;
  }

  @override
  bienvenida() {
    print('Bienvenido alumno ${this._name}');
  }
}

class Profesor extends Persona with Validaciones {
  String _rfc = '';

  get getRfc => this._rfc;
  set setRfc(String rfc) => this._rfc = rfc;

  //METODO es una funcion o un calculo que realiza el objeto
  tieneRFC() {
    bienvenida();

    if (_rfc.isNotEmpty) {
      print("El profesor $_name tiene RFC que es: $_rfc");
    } else {
      print("El profesor $_name No Tienes RFC!");
    }
    validarRFChomoClaves(this._rfc);
  }

  @override
  bienvenida() {
    print('Bienvenido profesor ${this._name}');
  }
}

mixin Validaciones {
  validarRFChomoClaves(String rfc) {
    print((rfc.length > 10) ? 'RFC con Homoclave' : 'RFC sin Homoclave');
  }
}
