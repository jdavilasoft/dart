/********************************************************************************

Objetivo:

El objetivo de este desafío simplificado es crear un sistema básico de gestión de inventario utilizando interfaces en Dart. El sistema debe permitir las siguientes operaciones básicas:
    Agregar un producto: Registrar la información de un nuevo producto, incluyendo su nombre y precio de venta.
    Buscar un producto: Buscar un producto por su nombre.
    Listar productos: Mostrar una lista de todos los productos disponibles en el inventario, ordenados por nombre.

Requisitos:
    Utilizar interfaces para definir los comportamientos comunes de las clases que representan productos y el sistema de gestión de inventario.
    Implementar clases concretas para representar los productos y el sistema de inventario.

Consideraciones adicionales:
    El sistema no necesita almacenar información adicional sobre los productos, como descripción, precio de costo o cantidad en stock.
    No se requiere la implementación de métodos para actualizar o eliminar productos.
    Enfócate en la correcta implementación de las interfaces y la aplicación de los principios de POO (encapsulamiento, herencia y polimorfismo) para diseñar un sistema modular y reutilizable.

Evaluación:

El desafío se evaluará en base a los siguientes criterios:
    Correcta implementación de las interfaces: Las interfaces deben definir los métodos correctamente y las clases concretas deben implementar todos los métodos requeridos.
    Diseño modular y reutilizable: El código debe estar organizado de manera modular, utilizando interfaces para promover la reutilización de código.
    Aplicación de los principios de POO: El código debe demostrar una comprensión adecuada de los principios de encapsulamiento y herencia.
    Claridad y legibilidad del código: El código debe estar bien formateado, con comentarios claros y descriptivos que faciliten su comprensión.

Este desafío simplificado te permitirá poner en práctica tus conocimientos sobre interfaces en Dart
y te ayudará a desarrollar un sistema de gestión de inventario básico con los principios fundamentales de POO.

********************************************************************************/

abstract class IProducto {
  int get codigo;
  void set codigo(int codigo);

  String get nombre;
  void set nombre(String nombre);

  double get precio;
  void set precio(double precio);
}

abstract class ISistemaInventario {
  void agregarProducto(IProducto p);
  IProducto buscarProducto(int cod);
  List<IProducto> listarProductos();
}

class Producto implements IProducto {
  int _codigo;
  String _nombre;
  double _precio;

  @override
  int get codigo => _codigo;

  @override
  void set codigo(int codigo) {
    _codigo = codigo;
  }

  @override
  String get nombre => _nombre;

  @override
  void set nombre(String nombre) {
    _nombre = nombre;
  }

  @override
  double get precio => _precio;

  @override
  void set precio(double precio) {
    _precio = precio;
  }

  //Constructor que inicializa un Producto
  Producto(this._codigo, this._nombre, this._precio);

  @override
  String toString() {
    return "\nCodigo: $_codigo - Nombre: $_nombre - Precio: $_precio";
  }
}

class SistemaInventario implements ISistemaInventario {
  List<IProducto> _listaProductos = [];

  @override
  void agregarProducto(IProducto p) {
    _listaProductos.add(p);
  }

  @override
  IProducto buscarProducto(int cod) {
    for (IProducto pro in _listaProductos) if (pro.codigo == cod) return pro;

    return Producto(-1, "", 0);
  }

  @override
  List<IProducto> listarProductos() {
    List<IProducto> listaOrdenada = _listaProductos.toList();
    listaOrdenada.sort((a, b) => a.nombre.compareTo(b.nombre));
    return listaOrdenada;
  }
}

void main() {
  var sistemaInventario = SistemaInventario();

  var pro1 = Producto(1, "Fideo", 2.5);
  var pro2 = Producto(2, "Leche", 5);
  var pro3 = Producto(3, "Arroz", 4.5);
  var pro4 = Producto(4, "Aceite", 10);

  sistemaInventario.agregarProducto(pro1);
  sistemaInventario.agregarProducto(pro2);
  sistemaInventario.agregarProducto(pro3);
  sistemaInventario.agregarProducto(pro4);

  print(sistemaInventario.listarProductos());
}
