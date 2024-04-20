/********************************************************************************

Objetivo: Crear una clase Tarea con las funcionalidades básicas para gestionar tareas en una aplicación.

Requisitos:

    Clase Tarea:
        Atributos:
            nombre: String (nombre de la tarea)
            descripcion: String (descripción de la tarea)
            fechaLimite: DateTime (fecha límite para completar la tarea)
            completada: bool (indica si la tarea está completada o no)
        Constructor:
            Constructor por defecto que inicialice los atributos con valores predeterminados (nombre vacío, descripción vacía, fecha límite la fecha actual, completada en falso).
            Constructor con nombre que permita especificar todos los atributos al crear la instancia.
        Métodos:
            marcarComoCompletada(): Cambia el estado de la tarea a completada (establece completada en verdadero).
            mostrarInformacion(): Muestra en consola la información de la tarea (nombre, descripción, fecha límite, estado de completada).

    Clase principal:
        Crear una clase principal para gestionar un conjunto de tareas.
        Atributo:
            listaTareas: List<Tarea> (lista para almacenar las tareas).
        Métodos:
            agregarTarea(Tarea tarea): Agrega una nueva tarea a la lista listaTareas.
            eliminarTarea(Tarea tarea): Elimina una tarea específica de la lista listaTareas.
            mostrarTodasLasTareas(): Muestra en consola la información de todas las tareas de la lista.
            marcarTareaCompletada(int indice): Marca como completada la tarea en la posición especificada por el índice en la lista.
            buscarTareaPorNombre(String nombre): Busca una tarea por su nombre y devuelve una lista con las coincidencias.

Restricciones:

    No se debe utilizar código preexistente.
    Enfócate en la estructura de las clases, constructores, propiedades y métodos.
    No es necesario implementar validaciones ni manejo de errores avanzado.

********************************************************************************/

// Clase TAREA
class Tarea {
  // Atributos
  String nombre = "";
  String descripcion = "";
  late DateTime fecha;
  bool completada = false;

  // Constructor por defecto
  Tarea()
      : this.nombre = "",
        this.descripcion = "",
        this.fecha = DateTime.now(),
        this.completada = false;

  // Constructor con nombre
  Tarea.CrearTarea(String nom, String dsc, DateTime dt, bool c)
      : this.nombre = nom,
        this.descripcion = dsc,
        this.fecha = dt,
        this.completada = c;

  // Metodos
  void marcarComoCompletada() {
    this.completada = true;
  }

  void mostrarInformacion() {
    print("""
      Informacion de la tarea
      =======================
      nombre: $nombre
      descripcion: $descripcion
      fecha: ${fecha.toIso8601String()}
      completada: ${completada ? "SI" : "NO"}
      """);
  }
}

// Clase principal
class Principal {
  // Atributos
  late List<Tarea> listaTareas;

  // agregarTarea(Tarea tarea):
  // Agrega una nueva tarea a la lista listaTareas.
  void agregarTarea(Tarea tarea) {
    listaTareas.add(tarea);
  }

  // eliminarTarea(Tarea tarea):
  // Elimina una tarea específica de la lista listaTareas.
  void eliminarTarea(Tarea tarea) {
    listaTareas.remove(tarea);
  }

  // mostrarTodasLasTareas(): Muestra en consola
  // la información de todas las tareas de la lista.
  void mostrarTodasLasTareas() {
    for (Tarea tarea in listaTareas) tarea.mostrarInformacion();
  }

  // marcarTareaCompletada(int indice): Marca como completada
  // la tarea en la posición especificada por el índice en la lista.
  void marcarTareaCompletada(int indice) {
    if (indice >= 0 && indice < listaTareas.length) {
      Tarea tareaEncontrada = listaTareas[indice];
      if (tareaEncontrada.completada == false) {
        tareaEncontrada.marcarComoCompletada();
        print('Tarea completada correctamente.');
      }
    } else
      print('El índice especificado está fuera del rango de la lista.');
  }

  // buscarTareaPorNombre(String nombre): Busca una tarea por
  // su nombre y devuelve una lista con las coincidencias.
  List<Tarea> buscarTareaPorNombre(String nombre) {
    List<Tarea> listaFiltrada = [];

    for (Tarea tarea in listaTareas)
      if (tarea.nombre.contains(nombre)) listaFiltrada.add(tarea);

    return listaFiltrada;
  }
}
