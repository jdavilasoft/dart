/********************************************************************************

Traducción de códigos de error

Objetivo: Crear un programa que traduzca los códigos de error de un sistema operativo a mensajes legibles para el usuario usando la sentencia switch.

Requisitos:
    El programa debe tener una lista de códigos de error comunes del sistema operativo.
    Para cada código de error, el programa debe mostrar un mensaje legible para el usuario que explique el error.
    El programa debe usar la sentencia switch para seleccionar el mensaje correspondiente al código de error.

Pasos para completar el desafío:
    Investiga los códigos de error comunes del sistema operativo. Puedes encontrar una lista de códigos de error en la documentación del sistema operativo o en internet.
    Define una variable para almacenar el código de error.
    Crea una lista de casos en la sentencia switch. Cada caso debe tener un código de error y un mensaje legible para el usuario.
    Usa la variable del código de error para seleccionar el caso correspondiente en la sentencia switch.
    Imprime el mensaje del caso seleccionado.

Consejos:
    Puedes usar una estructura de datos como un mapa para almacenar los códigos de error y sus mensajes. Esto te permitirá acceder a los mensajes de forma más eficiente.
    Puedes agregar validación para asegurarte de que el código de error ingresado por el usuario sea válido.
    Puedes agregar la posibilidad de que el usuario busque un código de error específico.

********************************************************************************/

void main() {
  int codError = 150;

  switch (codError) {
    case 100:
      print("Error de Pantalla Azul de la Muerte");
      break;
    case 110:
      print("Error de Registro del Sistema");
      break;
    case 120:
      print("Error de Actualización de Windows");
      break;
    case 130:
      print("Error de Instalación de Controladores");
      break;
    case 140:
      print("Error de Disco Duro o SSD");
      break;
    case 150:
      print("Error de Actualización de BIOS");
      break;
    case 160:
      print("Error de DLL faltante o dañada");
      break;
    case 170:
      print("Error de Archivos del Sistema Corruptos");
      break;
    case 180:
      print("Error de Activación de Windows");
      break;
    case 190:
      print("Error de Conexión de Red");
      break;
    default:
      print("Error desconocido o no controlado");
  }
}
