
/********************************************************************************

Objetivo:
    Crear una función que calcule el promedio de un conjunto de números.
    Implementar diferentes técnicas para elevar el nivel de complejidad del desafío.

Requisitos:
    La función debe recibir como parámetro una lista de números.
    La función debe devolver un valor numérico que represente el promedio de los números en la lista.
    Asegurarse de que el parámetro recibido sea una lista no vacía y que todos sus elementos sean números.

Ejemplos de técnicas:
    Validación de datos: Usar la función isEmpty para verificar si la lista está vacía y la función every para verificar que todos sus elementos sean números.
    Manejo de valores especiales: Si la lista está vacía, se puede devolver un valor 0.
    Eficiencia: Usar un bucle for en lugar de un bucle while para iterar la lista.
    Modularidad: Crear una subfunción para realizar la validación de datos y otra para calcular el promedio.

********************************************************************************/

bool validardatos(var lista) {

    // Validación de lista vacia
  if (lista.isEmpty) {
    print("Lista vacía");
    return false;
  }

  // validacion de elementos
  bool todosNumeros = lista.every((item) => item is num);

  if (!todosNumeros) {
    print("No todos los elementos son números");
    return false;
  }

  return true;
}

double calcularPromedio(var lista) {

  // Calculamos la suma de los elementos
  double sum = 0;
  for (var item in lista)
    sum = sum + item;

  // Retornamos el promedio
  return sum / lista.length;
}

void main() {

  // Definimos la lsita de elementos
  var lista = [5, 15, 14, 25];
  
  // Validamos los datos
  if (!validardatos(lista)) return;

  // Llamamos a la funcion y mostramo el resultado
  print("El promedio de los elementos de elementos de la lista es: ${calcularPromedio(lista)}");
}

/*

// SOLUCION GeminiIA

bool listaVacia(List<num> lista) => lista.isEmpty;

bool todosNumeros(List<num> lista) => lista.every((item) => item is num);

double calcularPromedio(List<num> lista) {
  // Calculamos la suma de los elementos
  double sum = 0;
  for (var item in lista) {
    sum += item;
  }

  // Retornamos el promedio
  return sum / lista.length;
}

void main() {
  // Definimos la lsita de elementos
  var lista = [5, 15, 14, 25];

  // Validamos si la lista está vacía
  if (listaVacia(lista)) {
    print("La lista está vacía");
    return;
  }

  // Validamos que todos los elementos sean números
  if (!todosNumeros(lista)) {
    print("No todos los elementos son números");
    return;
  }

  // Llamamos a la funcion y mostramos el resultado
  print("El promedio de los elementos de la lista es: ${calcularPromedio(lista)}");
}


*/