
/********************************************************************************

Imagina que tienes un sistema de control de acceso para un edificio.

El sistema tiene tres sensores:

    Sensor de movimiento: Se activa si detecta movimiento en la entrada del edificio.
    Sensor de puerta: Se activa si la puerta del edificio está abierta.
    Sensor de ventana: Se activa si una ventana del edificio está abierta.

El sistema de alarma se activará si:

    El sensor de movimiento y el sensor de puerta están activos al mismo tiempo.
    El sensor de ventana está activo y el sensor de puerta no está activo.

Escribe un programa en Dart que simule el sistema de alarma.

El programa debe:
    Pedir al usuario el estado de cada sensor (activo o inactivo).
    Determinar si la alarma debe activarse en base al estado de los sensores.
    Mostrar un mensaje al usuario indicando si la alarma está activada o desactivada.

No te preocupes por la entrada de datos del usuario por ahora, puedes asumir valores fijos para los sensores.

Aquí hay algunos consejos para ayudarte a resolver el desafío:
    Utiliza variables booleanas para representar el estado de cada sensor.
    Utiliza operadores lógicos para determinar si la alarma debe activarse.
    Utiliza una sentencia condicional if para mostrar el mensaje adecuado al usuario.

********************************************************************************/

import 'dart:io';

void main() {
  // Lectura de los valores de los sensores  
  stdout.write("Ingrese valor del sensor de movimiento: ");
  bool sensorMovimiento = bool.parse(stdin.readLineSync()!);

  stdout.write("Ingrese valor de sensor de puerta: ");
  bool sensorPuerta = bool.parse(stdin.readLineSync()!);

  stdout.write("Ingrese valor para el sensor de ventana: ");
  bool sensorVentana = bool.parse(stdin.readLineSync()!);

  bool alarma = false;

  // Validamos los sensores
  if (sensorMovimiento == true && sensorPuerta == true)
    alarma = true;

  if (alarma) {
    print("La alarma está activada");
    print("Verificar el sensor de movimiento y puerta");
    alarma = false;
  }

  if (sensorVentana == true || sensorPuerta == false)
    alarma = true;

  if (alarma) {
    print("La alarma está activada");
    print("Verificar el sensor de ventana o puerta");
  }

  if (alarma == false)
    print("La alarma está desactivada");

}