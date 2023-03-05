//GET y SET permiten encaplsular los atributos
void main() {
  //Vamos a instaciar los objetos:
  //Alumno Maria
  Alumno maria = Alumno();
  maria.setName = 'Maria';
  print(maria.getName);
  maria.setCalificaciones = [10, 9, 8, 7];
  print(maria.getCalificaciones);
  maria.obtenerPromedio();

  //Alumno Jose
  Alumno jose = Alumno();
  jose.setName = 'Jose';
  print(jose.getName);
  jose.setCalificaciones = [8, 8, 10, 10];
  print(jose.getCalificaciones);
  jose.obtenerPromedio();
}

// La CLASE es como una plantilla que permite crear nuevos objetos, es decir
//a partir de la clase Alumno podre crear la cantidade de alumnos que requiera
class Alumno {
  //nombre,apellido,etc.. se llama ATRIBUTOS, es decir las caracteristicas
  //que poseeran los nuevos objetos
  String _name = "";
  String _apellido = "";
  int _edad = 0;
  String _telefono = "";
  List<double> _calificaciones = [];

  get getName => this._name;
  set setName(String value) => this._name = value;

  get getApellido => this._apellido;
  set setApellido(value) => this._apellido = value;

  get getEdad => this._edad;
  set setEdad(value) => this._edad = value;

  get getTelefono => this._telefono;
  set setTelefono(value) => this._telefono = value;

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
