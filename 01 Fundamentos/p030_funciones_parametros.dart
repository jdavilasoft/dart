
void mostrarMensaje(String msg) {
  print(msg);
}

String obtenerNombre() {
  return "Juan";
}

void main() {
  mostrarMensaje("Hola a todos");
  String nombre = obtenerNombre();
  print("El nombre es $nombre");
}