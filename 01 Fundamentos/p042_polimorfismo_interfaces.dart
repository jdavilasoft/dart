// Polimorfismo de interfaces

import 'dart:math';

abstract class FiguraGeometrica {
  double calcularArea();
}

class Cuadrado implements FiguraGeometrica {
  double lado = 0;

  Cuadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }
}

class Circulo implements FiguraGeometrica {
  double radio = 0;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return pi * radio * radio;
  }
}

void main() {
  FiguraGeometrica cuadrado = Cuadrado(5);
  print(cuadrado.calcularArea()); // Polimorfismo de interfaces

  FiguraGeometrica circulo = Circulo(7);
  print(circulo.calcularArea()); // Polimorfismo de interfaces
}
