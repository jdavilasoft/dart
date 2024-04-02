
void main() {

  // Uso de la sentencia 'break'
  // Si lega al numero 5 finaliza el bucle
  for (int x = 0; x < 10; x++) {
    if (x == 5)
      break;

    print(x);
  }

  print("");

  // Uso de la sentencia 'continue'
  // Evita los pares y solo muestra los impares
  for (var i = 0; i < 10; i++) {
    if (i % 2 == 0)
      continue;

    print(i);
  }

}