class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void saludar() {
    print("Hola, soy $nombre y tengo $edad anios");
  }
}

class Estudiante extends Persona {
  int matricula;

  Estudiante(String nombre, int edad, this.matricula) : super(nombre, edad);

  void saludar() {
    print("Hola, soy $nombre y tengo $edad anios y estoy matriculado con el codigo: $matricula");
  }
}

void main() {
  var person = new Persona("Javier", 40);
  person.saludar();

  var student = new Estudiante("Oscar", 42, 666);
  student.saludar();
}
