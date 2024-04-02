


/********************************************************************************

Imagina que tienes un juego de adivinanzas donde el usuario tiene que adivinar un número secreto.

El número secreto está entre 1 y 100.

El usuario tiene 10 intentos para adivinar el número secreto.

El programa debe:
    Pedir al usuario que ingrese un número.
    Si el número es mayor que el número secreto, el programa debe mostrar un mensaje que indique que el número secreto es menor.
    Si el número es menor que el número secreto, el programa debe mostrar un mensaje que indique que el número secreto es mayor.
    Si el usuario adivina el número secreto, el programa debe mostrar un mensaje de felicitación.
    Si el usuario no adivina el número secreto en 10 intentos, el programa debe mostrar un mensaje que indique que ha perdido el juego.

Consejos:
    Usa un bucle while para controlar los intentos del usuario.
    Usa una variable para almacenar el número de intentos restantes.
    Usa una variable para almacenar el número adivinado por el usuario.
    Usa una variable para almacenar el número secreto.
    Usa sentencias condicionales if para comparar el número adivinado por el usuario con el número secreto.
    Usa print para mostrar mensajes al usuario.

********************************************************************************/

import 'dart:io';

void main() {

  // Descripcion del programa
  print("ADIVINA EL NUMERO");

  // Fijamos un numero secreto
  int numeroSecreto = 69;

  // Contador para los intentos
  int c = 1;

  // Pedimos al usuario que ingrese un numero y 
  // comparamos hasta encontrar el numero secreto
  while (c < 11) {
    stdout.write("Ingresa un numero: ");
    int miNumero = int.parse(stdin.readLineSync()!);
    
    if (miNumero > numeroSecreto)
      print("El numero secreto es menor");
    else if (miNumero < numeroSecreto)
      print("El numero secreto es mayor");
    else {
      print("Felicidades, has acertado en $c intentos");
      break;
    }

    if (c == 10)
      print("Fin del juego, no tienes mas opotunidades, usaste $c oportunidades");

    c++;
  }

}