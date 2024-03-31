import 'dart:io';

void main() {

  print("\n*** Una forma de leer ***");

  stdout.write('Por favor, ingrese un número: ');
  var num = int.parse(stdin.readLineSync()!);
  print('El número ingresado es: $num');

  print("");

  stdout.write('Por favor, ingrese un texto o una fecha: ');
  var text = stdin.readLineSync()!;
  print('Su texto ingresado es: $text');

  print("\n*** Otra forma de leer ***");

  stdout.write('Por favor, ingrese un número: ');
  var num1 = int.parse(stdin.readLineSync().toString());
  print('El número ingresado es: $num1');

  print("");

  stdout.write('Por favor, ingrese un texto o una fecha: ');
  var text1 = stdin.readLineSync().toString();
  print('Su texto ingresado es: $text1');

}