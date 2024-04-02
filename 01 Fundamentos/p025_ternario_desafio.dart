
/********************************************************************************

Imagina que tienes un programa que permite al usuario ingresar una calificación.

El programa debe:
    Pedir al usuario que ingrese una calificación entre 0 y 100.
    Si la calificación es mayor o igual a 90, el programa debe mostrar un mensaje de felicitación al usuario por haber obtenido una calificación excelente.
    Si la calificación es mayor o igual a 70, el programa debe mostrar un mensaje de felicitación al usuario por haber obtenido una buena calificación.
    Si la calificación es menor que 70, el programa debe mostrar un mensaje al usuario indicándole que necesita mejorar su rendimiento.

Debes usar el operador ternario para controlar el flujo del programa.

Consejos:
    Usa una variable para almacenar la calificación del usuario.
    Usa el operador ternario para mostrar un mensaje diferente al usuario en función de la calificación.

********************************************************************************/

import 'dart:io';

void main() {

  // Indicamos de se trata el programa
  print("EVALUACION DE UNA CALIFICACION");

  while (true) {

    stdout.write("Ingrese un calificación: ");
    int calificacion = int.parse(stdin.readLineSync()!);

    if (calificacion >= 0 && calificacion <= 100) {
      print(calificacion >= 90 ? "Excelente!" : calificacion >= 70 ? "Buena" : "Debes mejorar");
      break;
    }
    else {
      print("Calificacion no válida, solo numeros entre 0 y 100");
      continue;
    }

  }

}