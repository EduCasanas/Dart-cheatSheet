//INSTANCIA es la creacion del objeto requerrido
void main() {
  //Vamos a instaciar los objetos:
  //Alumno Maria
  Alumno maria = Alumno(
      name: 'Maria',
      apellido: 'Barst',
      edad: 15,
      telefono: '09785412',
      calificaciones: [9, 8, 7, 9]);
  //Una vez se instancian los objetos de la clase, es decir se crean los
  //objetos, ya podemos acceder a los atributos y metodos que poseen
  maria.obtenerPromedio();
  //Alumno Jose
  Alumno jose = Alumno(
      name: 'Jose',
      apellido: 'Castro',
      edad: 25,
      telefono: '09585332254',
      calificaciones: [10, 8, 7, 5]);

  jose.obtenerPromedio();
  //Alumno Laura
}

// La CLASE es como una plantilla que permite crear nuevos objetos, es decir
//a partir de la clase Alumno podre crear la cantidade de alumnos que requiera
class Alumno {
  //nombre,apellido,etc.. se llama ATRIBUTOS, es decir las caracteristicas
  //que poseeran los nuevos objetos
  String name;
  String apellido;
  int edad;
  String telefono;
  List<double> calificaciones;

  //CONSTRUCTOR lleva el mismo nombre de la clase,su mision es inicializar las
  //variables que se encuentran dentro de una clase.

  //Argumentos obligatorios
  /*
  Alumno(this.name, this.apellido, this.edad, this.telefono,
      this.calificaciones) {}
  */

  //los argumentos pueden ser tambien opcionales con {}
  Alumno(
      {this.name = '',
      this.apellido = '',
      this.edad = 0,
      this.telefono = '',
      this.calificaciones = const []});

  //METODO es una funcion o un calculo que realiza el objeto
  obtenerPromedio() {
    double promedio =
        this.calificaciones.reduce((value, element) => value + element) /
            this.calificaciones.length;
    //print('El promedio del alumno $name es $promedio');
    print('El promedio del alumno ${this.name} es: $promedio');
  }
}
