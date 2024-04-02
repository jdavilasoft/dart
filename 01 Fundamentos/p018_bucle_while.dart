
import 'dart:io';

void main() {

  // Bucle uno
  var i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  print("");

  // Bucle dos (juego)
  var numeroSecreto = 5;
  var adivinanza = 0;
  while (adivinanza != numeroSecreto) {
    adivinanza = int.parse(stdin.readLineSync()!);
    if (adivinanza > numeroSecreto)
      print("El número secreto es menor");
    else if (adivinanza < numeroSecreto)
      print("El número secreto es mayor");
  }
  
  print("¡Felicidades, has adivinado el número secreto!");

}