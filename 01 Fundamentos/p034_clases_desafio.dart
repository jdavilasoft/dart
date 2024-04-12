
/********************************************************************************

Objetivo: Crea una clase Coche que represente un vehículo con las siguientes características:

    Atributos:
        marca: String
        modelo: String
        color: String
        año: int
        kilometraje: int
    Métodos:
        encender(): Imprime un mensaje que indica que el coche se ha encendido.
        apagar(): Imprime un mensaje que indica que el coche se ha apagado.
        conducir(int distancia): Imprime un mensaje que indica que el coche ha recorrido una distancia y actualiza el kilometraje.
        mostrarInformacion(): Imprime la información del coche (marca, modelo, color, año, kilometraje).

Desafío:
    Crea una clase Coche con los atributos y métodos mencionados anteriormente.
    Crea un objeto de la clase Coche con los datos de un vehículo real o inventado.
    Llama a los métodos del objeto para encender el coche, conducir una distancia y mostrar la información del coche.

Ejemplo de uso:

  var coche = Coche("Toyota", "Corolla", "Rojo", 2023, 0);

  coche.encender();
  coche.conducir(100);
  coche.mostrarInformacion();
  coche.apagar();

Pistas:
    Puedes usar la sintaxis this.atributo para acceder a los atributos de una clase desde un método.
    Puedes usar la función print() para imprimir mensajes en la consola.
    Puedes usar variables para almacenar valores que se usan en diferentes partes del código.

********************************************************************************/


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
