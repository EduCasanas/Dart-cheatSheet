//CLASES ABSTRACTAS no pueden instanciar, no crean nuevos objetos.
//Que tal si creamos un nuevo objeto a partir de la clase Persona:
//Persona persona = Persona();
//creara un objeto con los atributos de la clase Persona, pero esto no es
//recomendable, es decir no crear objetos de las clases que comparten
//atributos y metodos en comun con otras clases, para ello hay que
//indicar con la palabra reservada'abstract' antes del class, para indicar que
//esa clase no podra crear nuevos objetos pero que si podran ser heredados
//sus atributos/metodos por otras clases.
void main() {
  Alumno maria = Alumno();
  maria.setName = 'Maria';
  maria.setCalificaciones = [10, 9, 7];
  maria.obtenerPromedio();

  Profesor pedro = Profesor();
  pedro.setName = 'Pedro';
  pedro.setRfc = 'ABCD123';
  pedro.tieneRFC();

  //Persona persona = Persona(); al ser la clase Persona abstracta ya no puede
  //instanciar nuevos objetos.
}

// La CLASE es como una plantilla que permite crear nuevos objetos, es decir
//a partir de la clase Alumno podre crear la cantidade de alumnos que requiera
abstract class Persona {
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
}

class Profesor extends Persona {
  String _rfc = '';

  get getRfc => this._rfc;
  set setRfc(String rfc) => this._rfc = rfc;

  //METODO es una funcion o un calculo que realiza el objeto
  tieneRFC() {
    if (_rfc.isNotEmpty) {
      print("El profesor $_name tiene RFC que es: $_rfc");
    } else {
      print("El profesor $_name No Tienes RFC!");
    }
  }
}
