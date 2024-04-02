
/********************************************************************************

Imagina que tienes un programa que permite al usuario ingresar una serie de números.

El programa debe:
    Pedir al usuario que ingrese un número.
    Si el número es negativo, el programa debe mostrar un mensaje de error y pedir al usuario que ingrese otro número.
    Si el número es positivo, el programa debe calcular el promedio de todos los números ingresados hasta el momento.
    El programa debe terminar cuando el usuario ingrese un número 0.

Debes usar las sentencias break y continue para controlar el flujo del programa.

Consejos:
    Usa una variable para almacenar el promedio de los números.
    Usa una variable para almacenar la suma de los números.
    Usa una variable para contar cuántos números se han ingresado.
    Usa sentencias condicionales if para verificar si el número ingresado es negativo o 0.
    Usa la sentencia break para salir del bucle cuando el usuario ingrese un número 0.
    Usa la sentencia continue para evitar calcular el promedio si el número ingresado es negativo.

********************************************************************************/

import 'dart:io';

void main() {

  // Mostramos de que se trata el programa
  print("INGRESA NUMERO, FINALIZA CUANDO INGRESA UN CERO (0)");

  int suma = 0;
  int c = 0;

  while (true) {

    stdout.write("Ingrese un número: ");
    int miNumero = int.parse(stdin.readLineSync()!);

    if (miNumero == 0)
      break;

    if (miNumero < 0) {
      print("Ingrese otro número");
      continue;
    }

    if (miNumero > 0) {
      suma += miNumero;
      c++;
    }

  }

  print("La suma de los $c números positivos es: $suma y el promedio es: ${suma / c}");
}