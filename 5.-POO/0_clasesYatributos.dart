//Estilo de programacion: Programacion orientada a objetos
void main() {}

// La CLASE es como una plantilla que permite crear nuevos objetos, es decir
//a partir de la clase Alumno podre crear la cantidade de alumnos que requiera
class Alumno {
  //nombre,apellido,etc.. se llama ATRIBUTOS, es decir las caracteristicas
  //que poseeran los nuevos objetos
  String name;
  String apellido;
  int edad;
  int telefono;
  List<double> calificaciones;

  //METODO es una funcion o un calculo que realiza el objeto
  obtenerPromedio() {
    double promedio =
        this.calificaciones.reduce((value, element) => value + element) /
            this.calificaciones.length;
    print('El promedio del alumno es $promedio');
  }
}
