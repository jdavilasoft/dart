/********************************************************************************

Desafío:

  1. Crea un programa que declare las siguientes variables:
      Un número entero que represente tu edad.
      Un número decimal que represente tu altura.
      Tu nombre como una cadena de caracteres.
      Un valor booleano que indique si eres estudiante o no.

  2. Imprime el valor de cada variable en la consola.

  3. Modifica el valor de cada variable y vuelve a imprimirlo en la consola.

  4. Crea una variable null y verifica su tipo de dato.

  5. Intenta asignar un valor de un tipo de dato incompatible
      a una variable de otro tipo de dato. ¿Qué sucede?

********************************************************************************/

// Parte 1
int miEdad = 40;
double miAltura = 1.65;
String miNombre = "Javier";
bool estudiante = true;

void main() {
  // Parte 2
  print("Esta es mi edad: $miEdad");
  print("Esta es mi estatura: $miAltura");
  print("Este es mi nombre: $miNombre");
  print("Soy estudiante: $estudiante");

  // Parte 3
  miEdad = 35;
  miAltura = 1.68;
  miNombre = "Alejandro";
  estudiante = false;

  print("Esta es mi edad $miEdad");
  print("Esta es mi altura: $miAltura");
  print("Este es mi nombre: $miNombre");
  print("Estudiante: $estudiante");

  // Parte 4
  var varNula = null;
  print("La variable: varNula es: ${varNula.runtimeType}");

  // Parte 5
  // El siguiente código genera error de tipo de datos
  // miEdad = miAltura;
}