
/********************************************************************************

Imagina que tienes una tienda de ropa y necesitas calcular el precio final de una prenda para un cliente.

El precio final de la prenda se calcula de la siguiente manera:

    Si el precio original de la prenda es mayor a $100, se aplica un descuento del 20%.
    Si el precio original de la prenda es menor o igual a $100, se aplica un descuento del 10%.

Además, si el cliente es un cliente VIP, se le aplica un descuento adicional del 5% sobre el precio final.

Escribe un programa en Dart que calcule el precio final de una prenda para un cliente,
teniendo en cuenta el precio original de la prenda, el tipo de cliente (VIP o normal) y los descuentos aplicables.

El programa debe:
    Pedir al usuario el precio original de la prenda.
    Pedir al usuario si el cliente es VIP (sí o no).
    Calcular el precio final de la prenda, aplicando los descuentos correspondientes.
    Mostrar al usuario el precio final de la prenda.

No te preocupes por la entrada de datos del usuario por ahora, puedes asumir valores fijos para la prueba.

Consejos:
    Usa variables para almacenar el precio original de la prenda, el tipo de cliente y el precio final.
    Usa operadores relacionales para determinar el descuento aplicable.
    Usa operadores aritméticos para calcular el precio final.
    Usa una sentencia condicional if para mostrar el precio final al usuario.

********************************************************************************/

import 'dart:io';

void main() {

  // Mostramos un titulo de nuestro programa
  stdout.write("CALCULAMOS DESCUENTOS DE PRENDAS\n");
  
  // Pedimos ingresar el precio de la prenda
  stdout.write("Ingrese precio original de la prenda: ");
  double precioPrenda = double.parse(stdin.readLineSync()!);

  assert(precioPrenda > 0, "Precio de la prenda debe ser un numero positivo");

  // Pedimos ingresar la categoria del cliente
  stdout.write("Ingrese categoria del cliente (VIP | NORMAL): ");
  String categoriaCliente = stdin.readLineSync()!;

  double descuentoPrecio = 0;
  double descuentoVIP = 0;

  // Evaluamos variables
  if (precioPrenda <= 100)
    descuentoPrecio = precioPrenda * 0.1;
  else
    descuentoPrecio = precioPrenda * 0.2;

  if (categoriaCliente.toUpperCase() == "VIP")
    descuentoVIP = (precioPrenda - descuentoPrecio) * 0.05;

  // Mostrarmos el resultado final
  print("El precio de la prenda es: $precioPrenda");
  print("Tiene un descuento de: $descuentoPrecio");
  print("Tiene un descuento VIP de: $descuentoVIP");
  print("Precio final: " + (precioPrenda - descuentoPrecio - descuentoVIP).toStringAsFixed(2));

}