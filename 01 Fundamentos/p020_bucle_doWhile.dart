
import 'dart:math';

void main() {
  var dado = 0;

  do {
    dado = Random().nextInt(6) + 1;
    print("Has sacado un $dado");
  } while (dado != 6);
  print("Felicidades, sacaste un 6");
}