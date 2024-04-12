class Coche {
  String marca = "";
  String modelo = "";
  String color = "";
  int anio = 0;
  int km = 0;

  Coche(this.marca, this.modelo, this.color, this.anio, this.km);

  Coche.miConstructorPorDefecto() {
    // Contructor por defecto
  }

  void encender() {
    print("El coche se ha encendido");
  }

  void apagar() {
    print("El coche se ha apagado");
  }

  void conducir(int distancia) {
    print("El coche ha recorrido una distancia de $distancia km");
    this.km += distancia;
  }

  void mostrarInformacion() {
    print("""
      Informacion del coche
      =====================
      marca: $marca
      modelo: $modelo
      color: $color
      anio: $anio
      km: $km
      """);
  }
}

void main() {
  print("COCHE 1");
  var coche1 = Coche("Toyota", "Corolla", "Rojo", 2023, 0);

  coche1.encender();
  coche1.conducir(100);
  coche1.mostrarInformacion();
  coche1.apagar();

  print("COCHE 2");
  var coche2 = Coche.miConstructorPorDefecto();
  coche2.encender();
  coche2.mostrarInformacion();
}
