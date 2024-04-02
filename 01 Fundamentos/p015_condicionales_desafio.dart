
/********************************************************************************

Escribe un programa que calcule el índice de masa corporal (IMC) de una persona.

El IMC se calcula dividiendo el peso de la persona en kilogramos por su altura en metros cuadrados.

El programa debe:

    Pedir al usuario su peso en kilogramos.
    Pedir al usuario su altura en metros.

    Calcular el IMC de la persona.

    Mostrar al usuario el valor del IMC.

    Mostrar al usuario un mensaje que indique si la persona tiene un peso saludable, bajo peso o sobrepeso, según la siguiente clasificación:
    IMC menor a 18.5: Bajo peso
    IMC entre 18.5 y 24.9: Peso saludable
    IMC entre 25 y 29.9: Sobrepeso
    IMC mayor o igual a 30: Obesidad

Consejos:
    Usa variables para almacenar el peso, la altura y el IMC.
    Usa operadores aritméticos para calcular el IMC.
    Usa sentencias condicionales if para determinar la clasificación del IMC.
    Usa print para mostrar los resultados al usuario.

********************************************************************************/

import 'dart:io';
import 'dart:math';

void main() {

  // Mostramos un titulo para nuestro programa
  stdout.write("CALCULAMOS EL IMC\n");

  // Pedimos el peso de la persona
  stdout.write("Ingrese su peso en KG: ");
  double peso = double.parse(stdin.readLineSync()!);

  // Pedimos la estatura de la persona
  stdout.write("Ingrese su estatura en MTRS: ");
  double estatura = double.parse(stdin.readLineSync()!);

  // Calculamos el IMC
  double imc = peso / pow(estatura, 2);

  // Buscamos la clasficacion y mostramos el resultado
  stdout.write("Su IMC es: ${imc.toStringAsFixed(2)} y su clasificacion es: ");

  if (imc >= 30)
    stdout.write("OBESIDAD");
  else if (imc >= 25)
    stdout.write("SOBREPESO");
  else if (imc >= 18.5)
    stdout.write("PESO SALUDABLE");
  else
    stdout.write("BAJO PESO");
    
}