/********************************************************************************

Desafío de POO en Dart: Herencia para gestionar productos electrónicos

Objetivo: Crear una jerarquía de clases para gestionar productos electrónicos en una tienda.

Requisitos:

    Clase base Producto:
        Atributos:
            codigo: String (código único del producto)
            nombre: String (nombre del producto)
            precio: double (precio del producto)
            marca: String (marca del producto)
        Métodos:
            mostrarInformacion(): Muestra en consola la información del producto (código, nombre, precio, marca).

    Clase derivada Smartphone:
        Hereda de la clase Producto.
        Atributos adicionales:
            modelo: String (modelo del smartphone)
            sistemaOperativo: String (sistema operativo del smartphone)
            pantalla: String (tamaño y resolución de la pantalla)
        Métodos:
            mostrarInformacion(): Muestra en consola la información heredada del producto y la información específica del smartphone (modelo, sistema operativo, pantalla).

    Clase derivada Laptop:
        Hereda de la clase Producto.
        Atributos adicionales:
            marcaProcesador: String (marca del procesador)
            ram: int (cantidad de memoria RAM en GB)
            almacenamiento: String (tipo y capacidad de almacenamiento)
        Métodos:
            mostrarInformacion(): Muestra en consola la información heredada del producto y la información específica del laptop (marca procesador, RAM, almacenamiento).

Restricciones:

    No se debe utilizar código preexistente.
    Enfócate en la estructura de las clases, herencia y métodos.
    No es necesario implementar validaciones ni manejo de errores avanzado.

********************************************************************************/

class Producto {
  String codigo = "";
  String nombre = "";
  double precio = 0;
  String marca = "";

  void mostrarInformacion() {
    if (codigo.isEmpty || nombre.isEmpty || precio == 0 || marca.isEmpty) {
      print('Error: Falta información para mostrar el producto.');
      return;
    }

    print("""
      codigo: $codigo
      nombre: $nombre
      precio: $precio
      marca:  $marca
    """);
  }
}

class Smartphone extends Producto {
  String modelo = "";
  String sistemaOperativo = "";
  String pantalla = "";

  void mostrarInformacion() {
    if (codigo.isEmpty ||
        nombre.isEmpty ||
        precio == 0 ||
        marca.isEmpty ||
        modelo.isEmpty ||
        sistemaOperativo.isEmpty ||
        pantalla.isEmpty) {
      print('Error: Falta información para mostrar el laptop.');
      return;
    }

    print("""
      codigo:   $codigo
      nombre:   $nombre
      precio:   $precio
      marca:    $marca
      modelo:   $modelo
      SO:       $sistemaOperativo
      pantalla: $pantalla
    """);
  }
}

class Laptop extends Producto {
  String marcaProcesador = "";
  int ram = 0;
  String almacenamiento = "";

  void mostrarInformacion() {
    if (codigo.isEmpty ||
        nombre.isEmpty ||
        precio == 0 ||
        marca.isEmpty ||
        marcaProcesador.isEmpty ||
        ram == 0 ||
        almacenamiento.isEmpty) {
      print('Error: Falta información para mostrar el laptop.');
      return;
    }

    print("""
      codigo: $codigo
      nombre: $nombre
      precio: $precio
      marca:  $marca
      modelo: $marcaProcesador
      ram:    $ram
      rom:    $almacenamiento
    """);
  }
}
