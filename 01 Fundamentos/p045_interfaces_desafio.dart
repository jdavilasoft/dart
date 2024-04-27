/********************************************************************************

Objetivo:

El objetivo de este desafío es diseñar un sistema de gestión de inventario utilizando interfaces en Dart,
sin incluir el manejo de excepciones por el momento.
El sistema debe permitir las siguientes operaciones básicas:

    Agregar un nuevo producto: Registrar la información de un nuevo producto, incluyendo su nombre, descripción, precio de costo, precio de venta y cantidad en stock.
    Buscar un producto: Buscar un producto por su nombre o código único.
    Actualizar la información de un producto: Modificar el nombre, descripción, precio de costo, precio de venta o cantidad en stock de un producto existente.
    Eliminar un producto: Eliminar un producto del sistema.
    Listar productos: Mostrar una lista de todos los productos disponibles en el inventario, ordenados por nombre, precio o cantidad en stock.

Requisitos:

    Utilizar interfaces para definir los comportamientos comunes de las clases que representan productos y el sistema de gestión de inventario.
    Implementar clases concretas para representar los productos y el sistema de inventario.
    Aplicar los principios de encapsulamiento, herencia y polimorfismo para diseñar un sistema modular y reutilizable.

Consideraciones adicionales:

    Se pueden utilizar clases abstractas o interfaces para definir los comportamientos básicos.
    Las clases concretas deben implementar los métodos definidos en las interfaces o clases abstractas.
    Se pueden utilizar métodos concretos adicionales en las clases concretas para implementar funcionalidades específicas.

Evaluación:

El desafío se evaluará en base a los siguientes criterios:

    Correcta implementación de las interfaces: Las interfaces deben definir los métodos correctamente y las clases concretas deben implementar todos los métodos requeridos.
    Diseño modular y reutilizable: El código debe estar organizado de manera modular, utilizando clases abstractas e interfaces para promover la reutilización de código.
    Aplicación de los principios de POO: El código debe demostrar una comprensión adecuada de los principios de encapsulamiento, herencia y polimorfismo.
    Claridad y legibilidad del código: El código debe estar bien formateado, con comentarios claros y descriptivos que faciliten su comprensión.

Este desafío te permitirá poner en práctica tus conocimientos sobre interfaces en Dart
y te ayudará a desarrollar un sistema de gestión de inventario bien diseñado y reutilizable, sin la complejidad del manejo de excepciones.

********************************************************************************/

abstract class IProducto {
  String get nombre;
  void set nombre(String nombre);

  String get descripcion;
  void set descripcion(String descripcion);

  double get precioCosto;
  void set precioCosto(double precioCosto);

  double get precioVenta;
  void set precioVenta(double precioVenta);

  int get stock;
  void set stock(int cantidad);
}

abstract class ISistemaInventario {
  void registrarProducto(IProducto pro);
  IProducto buscarProducto(String nombre, String codigo);
  void actualizarProducto(IProducto pro);
  void eliminarProducto(String nombre, String codigo);
  List<IProducto> listarProductos({String? ordenamiento});
}

// Clase que encapsula la información de un producto e implementa la interfaz IProducto.
class Producto implements IProducto {
  String _nombre;
  String _descripcion;
  double _precioCosto;
  double _precioVenta;
  int _stock;

  @override
  String get nombre => _nombre;

  @override
  void set nombre(String nombre) {
    _nombre = nombre;
  }

  @override
  String get descripcion => _descripcion;

  @override
  void set descripcion(String descripcion) {
    _descripcion = descripcion;
  }

  @override
  double get precioCosto => _precioCosto;

  @override
  void set precioCosto(double precioCosto) {
    _precioCosto = precioCosto;
  }

  @override
  double get precioVenta => _precioVenta;

  @override
  void set precioVenta(double precioVenta) {
    _precioVenta = precioVenta;
  }

  @override
  int get stock => _stock;

  @override
  void set stock(int cantidadStock) {
    _stock = cantidadStock;
  }

  // Constructor para inicializar un objeto Producto.
  Producto(this._nombre, this._descripcion, this._precioCosto,
      this._precioVenta, this._stock);

  @override
  String toString() {
    return "$_nombre $_descripcion $_precioCosto $_precioVenta $_stock";
  }
}

// Clase que implementa la interfaz ISistemaInventario y gestiona las operaciones del sistema de inventario.
class SistemaInventario implements ISistemaInventario {
  List<IProducto> _productos = [];

  @override
  void registrarProducto(IProducto producto) {
    _productos.add(producto);
  }

  @override
  IProducto buscarProducto(String nombre, String codigo) {
    for (IProducto producto in _productos) {
      if (producto.nombre == nombre || producto.nombre == codigo) {
        return producto;
      }
    }
    // Si no se encuentra ningún producto coincidente, se devuelve un objeto IProducto nulo.
    return Producto("", "", 0, 0, 0);
  }

  @override
  void actualizarProducto(IProducto producto) {
    int index = _productos.indexOf(producto);
    if (index != -1) {
      _productos[index] = producto;
    }
  }

  @override
  void eliminarProducto(String nombre, String codigo) {
    _productos.removeWhere(
        (producto) => producto.nombre == nombre || producto.nombre == codigo);
  }

  @override
  List<IProducto> listarProductos({String? ordenamiento}) {
    List<IProducto> productosOrdenados = _productos.toList();

    if (ordenamiento != null) {
      switch (ordenamiento) {
        case 'nombre':
          productosOrdenados.sort((a, b) => a.nombre.compareTo(b.nombre));
          break;
        case 'precio':
          productosOrdenados
              .sort((a, b) => a.precioVenta.compareTo(b.precioVenta));
          break;
        case 'stock':
          productosOrdenados.sort((a, b) => a.stock.compareTo(b.stock));
          break;
      }
    }

    return productosOrdenados;
  }
}

// Ejemplo de uso del sistema de inventario
void main() {
  // Crear un sistema de inventario
  var sistemaInventario = SistemaInventario();

  // Crear algunos productos
  var producto1 = Producto('Camiseta', 'Camiseta de algodón', 15.00, 20.00, 50);

  sistemaInventario.registrarProducto(producto1);
  print(sistemaInventario.listarProductos().toString());
}
