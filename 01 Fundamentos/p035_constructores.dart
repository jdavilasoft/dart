// Clase PersonaA
class PersonaA {
  String nombre = "";
  int edad = 0;

  // Constructor por defecto
  PersonaA() {
    nombre = "Desconocido";
    edad = 0;
  }
}

// Clase PersonaB
class PersonaB {
  String nombre = "";
  int edad = 0;

  // Constructor con dos parametros
  PersonaB(this.nombre, this.edad);
}

class PersonaC {

  String nombre = "";
  int edad = 0;

  PersonaC(this.nombre, this.edad);

  PersonaC.constructorPorDefecto() {
    this.nombre = "persona";
    this.edad = 0;
  }

  void saludar() {
    print("Hola, me llamo $nombre y tengo $edad años.");
  }
}

void main() {
  var persona1 = PersonaA(); // Se usa el constructor por defecto
  print(persona1.nombre); // Imprime "Desconocido"
  print(persona1.edad); // Imprime 0

  var persona2 = PersonaB("Juan", 30);
  print(persona2.nombre); // Imprime "Juan"
  print(persona2.edad); // Imprime 30

  var persona3 = PersonaC.constructorPorDefecto();
  persona3.saludar();
}
