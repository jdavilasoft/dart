

/********************************************************************************

Desafío:

Escribir un programa en Dart que calcule el área de un triángulo.

Requisitos:

    El programa debe solicitar al usuario que ingrese la base y la altura del triángulo.
    El programa debe usar la instrucción assert para verificar que la base y la altura sean valores positivos.
    El programa debe calcular el área del triángulo utilizando la fórmula: area = (base * altura) / 2
    El programa debe mostrar el área del triángulo al usuario.

Ejemplo:

Entrada:
  Base: 5
  Altura: 10

Salida:
  Área: 25

Restricciones:
    No debes usar la función try-catch.
    Debes usar al menos dos instrucciones assert.

Pista:
    Puedes usar la función double.parse para convertir la entrada del usuario a un valor double.

********************************************************************************/

import 'dart:io';
void main() {
  stdout.write("Ingrese la base del triangulo: ");
  var b = double.parse(stdin.readLineSync().toString());

  assert(b > 0, "La base debe ser mayor que cero");

  stdout.write("Ingrese la altura del triangulo: ");
  var h = double.parse(stdin.readLineSync().toString());

  assert(h > 0, "La altura debe ser mayor que cero");

  var area = (b * h) / 2;

  stdout.write("Al area del triangulo es: ${area.toStringAsFixed(2)}");
}