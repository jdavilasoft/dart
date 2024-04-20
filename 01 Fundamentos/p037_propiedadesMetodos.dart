
class Persona {
  String nombre = "";
  String apellido = "";
  int edad = 0;

  // Propiedades (getters y setters)
  String getNombre() {
    return nombre;
  }

  void seNombre(String nom) {
    nombre = nom;
  }

  String getApellido() {
    return apellido;
  }

  void setApellido(String ape) {
    apellido = ape;
  }

  int getEdad() {
    return edad;
  }

  void setEdad(int ed) {
    edad = ed;
  }

  // Metodos
  String getDatos() {
    return "$nombre $apellido $edad";
  }

}