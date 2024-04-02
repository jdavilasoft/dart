/********************************************************************************

Imagina que tienes un programa que permite al usuario calcular el área de diferentes figuras geométricas.

El programa debe:
    Mostrar un menú con las diferentes figuras geométricas disponibles (triángulo, cuadrado, círculo).
    Pedir al usuario que seleccione la figura geométrica que desea calcular.
    Pedir al usuario los datos necesarios para calcular el área de la figura seleccionada.
    Mostrar el resultado del cálculo del área de la figura.

Debes usar funciones para:
    Mostrar el menú de opciones.
    Pedir al usuario que seleccione una opción.
    Pedir al usuario los datos necesarios para calcular el área de la figura seleccionada.
    Calcular el área de la figura seleccionada.
    Mostrar el resultado del cálculo del área de la figura.

Consejos:
    Usa una variable para almacenar la opción seleccionada por el usuario.
    Usa diferentes funciones para calcular el área de cada figura geométrica.
    Usa la función print para mostrar los mensajes al usuario.

********************************************************************************/

import 'dart:io';
import 'dart:math';

void calculaAreaTriangulo() {
  print("\nCALCULAMOS EL AREA DEL TRIANGULO");

  stdout.write("Ingrese la base: ");
  double b = double.parse(stdin.readLineSync()!);

  stdout.write("Ingrese la altura: ");
  double h = double.parse(stdin.readLineSync()!);

  print("El area del triangulo es: ${(b * h) / 2}");
}

void calculaAreaCuadrado() {
  print("\nCALCULAMOS EL AREA DEL CUADRADO");

  stdout.write("Ingrese el lado: ");
  double lado = double.parse(stdin.readLineSync()!);

  print("El area del cuadrado es: ${pow(lado, 2)}");
}

void calculaAreaCirculo() {
  print("\nCALCULAMOS EL AREA DEL CIRCULO");

  stdout.write("Ingrese el radio: ");
  double radio = double.parse(stdin.readLineSync()!);

  print("El area de circulo es: ${pi * pow(radio, 2)}");
}

void main() {
  // Menu de opciones
  while (true) {
    print("""\n\t*** MENU DE OPCIONES ***
    1. Calcular el area del triangulo
    2. Calcular el area del cuadrado
    3. Calcular el area del circulo
    0. Salir
    """);

    stdout.write("Ingrese opcion: ");
    int opt = int.parse(stdin.readLineSync()!);

    if (opt == 1)
      calculaAreaTriangulo();
    else if (opt == 2)
      calculaAreaCuadrado();
    else if (opt == 3)
      calculaAreaCirculo();
    else if (opt == 0)
      break;
    else
      continue;
  }
}
