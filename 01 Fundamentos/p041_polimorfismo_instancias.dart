// Polimorfismo de instancias

class Animal {
  void hacerRuido() {
    print("El animal hace ruido");
  }
}

class Perro extends Animal {
  @override
  void hacerRuido() {
    print("Ladrando");
  }
}

class Gato extends Animal {
  @override
  void hacerRuido() {
    print("Maullando");
  }
}

void main() {
  Animal perro1 = Perro();
  perro1.hacerRuido(); // Polimorfismo de instancias

  Animal gato1 = Gato();
  gato1.hacerRuido(); // Polimorfismo de instancias
}
