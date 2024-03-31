
int edad = 50;
double pi = 3.14;
String nombre = "pijon";
bool mentira = false;

// Uso del tipo 'var'
var miEdad = 25;
var miNombre = "Juan";
var varNull = null;

void main() {
  print("Valor de edad: $edad");
  print("Valor de pi = $pi");
  print("Eres mentiroso: $mentira");
  print("Eres $nombre");

  print("Variable nula: $varNull");
  // Verificamos el tipo de variable
  print("Tipo de variable: ${varNull.runtimeType}");
}