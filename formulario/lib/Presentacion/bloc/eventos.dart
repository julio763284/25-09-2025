class Eventosapp {}

class Iniciarapp extends Eventosapp {}

class EnviarFormulario extends Eventosapp {
  final String correo;
  final String contrasena;

  EnviarFormulario ({required this.correo, required this.contrasena});
}
