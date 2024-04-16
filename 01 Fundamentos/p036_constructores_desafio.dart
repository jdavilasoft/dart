
/********************************************************************************

El objetivo de este desafío es que pongas en práctica tus conocimientos sobre clases y constructores en Dart creando una aplicación sencilla.

Descripción:

Diseña una aplicación para gestionar una lista de contactos

    Contactos
        Nombre
        Apellido
        Teléfono
        Correo electrónico

Requisitos:

    Crea una clase Contacto con los atributos necesarios para almacenar la información de cada contacto.
    Define constructores para la clase Contacto, incluyendo un constructor por defecto.
    Crea un método que devuelva los datos del contacto
    Organiza el código de manera clara y eficiente.

¡Éxito en tu desafío!

Consejos:

    Comienza planificando el diseño de las clases y los métodos que necesitarás.
    Utiliza comentarios para explicar el código y hacerlo más comprensible.
    No dudes en buscar ayuda en la documentación oficial o en foros de Dart si te encuentras con dificultades.

Recuerda que este desafío es solo una sugerencia, puedes adaptarlo a tus necesidades e intereses.

********************************************************************************/

// Clase Contacto
class Contacto {
  
  String nombre = "";
  String apellido = "";
  String telefono = "";
  String email = "";

  // Constructor por defecto
  Contacto() :
    this.nombre = "Nombre contacto",
    this.apellido = "Apellido contacto",
    this.telefono = "0000000000",
    this.email = "email@contacto.com";

  Contacto.ContactoNombre(String nom, String telf) :
    this.nombre = nom,
    this.apellido = "",
    this.telefono = telf,
    this.email = "";

  Contacto.ContactoNombreApellido(String nom, String ape, String telf) :
    this.nombre = nom,
    this.apellido = ape,
    this.telefono = telf,
    this.email = "";

  Contacto.ContactCompleto(String nom, String ape, String telf, String email) :
    this.nombre = nom,
    this.apellido = ape,
    this.telefono = telf,
    this.email = email;

  String getContacto() {
    return "$nombre $apellido $telefono $email";
  }

}

void main() {
  // Uso de clase Contacto
  var contacto1 = Contacto();
  print(contacto1.getContacto());

  var contacto2 = Contacto.ContactoNombre("Hermano", "987654321");
  print(contacto2.getContacto());

  var contacto3 = Contacto.ContactoNombreApellido("Raquel", "Guerrero", "123456789");
  print(contacto3.getContacto());

  var contacto4 = Contacto.ContactCompleto("Jorge", "Guerrero", "852147963", "jorguito@email.com");
  print(contacto4.getContacto());
}
