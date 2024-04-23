/********************************************************************************

Objetivo:

Crear una jerarquía de clases que represente diferentes tipos de vehículos y
utilizar el polimorfismo para mostrar información sobre ellos de manera genérica.

Especificaciones:

    Crear una clase abstracta base llamada Vehiculo que incluya:
        Un atributo marca de tipo String.
        Un método abstracto acelerar().
        Un método abstracto frenar().
        Un método mostrarInformacion() que imprima en consola la marca del vehículo
                          y una frase que represente la acción de acelerar o frenar,
                          dependiendo de la implementación del método abstracto correspondiente en la clase derivada.

    Crear dos clases derivadas de Vehiculo:
        Coche: Debe implementar los metodos:
                      - acelerar() imprimiendo un mensaje que indique que el coche está acelerando
                      - frenar() imprimiendo un mensaje que indique que el coche está frenando.
        Motocicleta: Debe implementar los métodos:
                      - acelerar() imprimiendo un mensaje que indique que la motocicleta está acelerando
                      - frenar() imprimiendo un mensaje que indique que la motocicleta está frenando.

    En la función main(), crear instancias de las clases Coche y Motocicleta:
        - Llamar a los métodos acelerar() y frenar() para cada instancia.
        - Llamar al método mostrarInformacion() para cada instancia.

Restricciones:

    No se debe utilizar código copiado de ejemplos anteriores.
    La solución debe ser concisa y clara.
    Se debe enfocar en demostrar el uso del polimorfismo.

Evaluación:

El desafío se evaluará en función de los siguientes criterios:

    Correcta implementación de la jerarquía de clases.
    Implementación adecuada de los métodos abstractos y concretos.
    Utilización del polimorfismo para mostrar información de manera genérica.
    Claridad y organización del código.

********************************************************************************/

abstract class Vehiculo {
  String marca;

  Vehiculo(this.marca);

  void acelerar();
  void frenar();

  void mostrarInformacion() {
    print("Marca: $marca");
    // Frase de acción (acelerar o frenar) se define en clases derivadas
  }
}

class Coche extends Vehiculo {
  Coche(super.marca);
  // Tambien puede ser de la siguiente manera
  //Coche(String marca) : super(marca);

  @override
  void acelerar() {
    print("El coche está acelerando");
  }

  @override
  void frenar() {
    print("El coche está frenando");
  }
}

class Motocicleta extends Vehiculo {
  Motocicleta(super.marca);
  // Tambien puede ser de la siguiente manera
  //Coche(String marca) : super(marca);

  @override
  void acelerar() {
    print("La motocicleta está acelerando");
  }

  @override
  void frenar() {
    print("La motocicleta está frenando");
  }
}

void main() {
  Vehiculo coche = new Coche("Chevrolet");
  coche.acelerar();
  coche.frenar();
  coche.mostrarInformacion();

  Vehiculo motocicleta = new Motocicleta("Harley");
  motocicleta.acelerar();
  motocicleta.frenar();
  motocicleta.mostrarInformacion();
}