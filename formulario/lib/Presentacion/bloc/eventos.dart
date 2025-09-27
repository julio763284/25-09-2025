class Eventosapp {}

class Iniciarapp extends Eventosapp {}

class EnviarFormulario extends Eventosapp {
  final String nombrecompleto;
  final String nacionalidad;
  final String lenguamaterna;
  final String edad;

  EnviarFormulario ({required this.nombrecompleto, required this.nacionalidad, required this.lenguamaterna, required this.edad});
}
