
/********************************************************************************

Desafío: Cálculo del volumen de un cono

Objetivo:

Escribir un programa en Dart que calcule el volumen de un cono.

Requisitos:

    El programa debe solicitar al usuario que ingrese el radio y la altura del cono.
    El programa debe usar la función pow para calcular la potencia de un número.
    El programa debe calcular el volumen del cono utilizando la fórmula: volumen = (1/3) * π * radio^2 * altura
    El programa debe mostrar el volumen del cono al usuario.

Restricciones:
    No debes usar la función try-catch.
    Debes usar al menos una instrucción assert.
    Debes usar la función pow para calcular la potencia de un número.

Pistas:
    Puedes usar la variable pi definida en la biblioteca dart:math.
    Puedes usar la función double.parse para convertir la entrada del usuario a un valor double.

Ejemplo:

Entrada:

Radio: 5
Altura: 10

Salida:

El volumen del cono es: 523.6

********************************************************************************/

import 'dart:io';
import 'dart:math';

void main () {
  // Un encabezado
  print("Calculamos el volumen de un cono");

  // Pedimos el radio al usuario
  stdout.write("Ingrese el radio: ");
  double r = double.parse(stdin.readLineSync()!);

  // Validamos el radio
  assert(r > 0, "El radio debe ser un número positivo");

  // Pedimos la altura al usuario
  stdout.write("Ingrese la altura del cono: ");
  double h = double.parse(stdin.readLineSync()!);

  // Validamos el radio
  assert(h > 0, "La altura debe ser un número positivo");
  
  double volCono = (1/3) * pi * pow(r, 2) * h;

  print("El volumen del cono es: ${volCono.toStringAsFixed(2)}");
}