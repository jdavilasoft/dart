
/********************************************************************************

Imagina que tienes una lista de nombres de personas.

Tienes que escribir un programa que imprima los nombres de las personas que comienzan con la letra "A".

Consejos:

    Usa un bucle for para iterar sobre la lista de nombres.
    Usa una sentencia condicional if para verificar si el nombre comienza con la letra "A".
    Usa print para mostrar los nombres que cumplen la condición.

********************************************************************************/

void main() {

  // Describe el programa
  print("IMPRIME LOS NOMBRES DE LA LISTA QUE EMPIEZAN CON LA LETRA 'A'");

  // Declaramos la lista
  var lista = ["Javier", "Alejandro", "Cesar", "Enrique", "Alba"];

  // Recorremos la lista
  for (var item in lista)
    // validamos que el nombre de la lista empiece con A
    if (item.startsWith('A'))
      print(item);
}