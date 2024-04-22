
class Animal {
  String nombre = "";
  int edad = 0;

  void comer() {
    print("$nombre esta cominedo");
  }

  void hacerRuido() {
    print("El animal hacer ruido");
  }
}

class Perro extends Animal {
  String raza = "";

  void ladrar() {
    print("$nombre esta ladrando");
  }
}

void main() {
  Perro perro1 = Perro();
  perro1.nombre = "Toby";
  perro1.raza = "Labrador";
  perro1.comer();
  perro1.ladrar();
  perro1.hacerRuido();
}
