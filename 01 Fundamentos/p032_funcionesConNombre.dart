
// 1. FUNCION DECLARADA
void saludar1(String nombre) {
  print("Hola, $nombre");
}

void main() {

  saludar1("Javier");
  saludar1("Dávila");

  // 2. FUNCION EXPRESADA
  var saludar2 = (String nombre) => print("Hola, $nombre");

  saludar2("Javier");
  saludar2("Dávila");
}
