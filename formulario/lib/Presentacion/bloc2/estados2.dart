class EstadosHome {}

class EstadoHomeLoading extends EstadosHome{}
class EstadoHomeExitoso extends EstadosHome{
  final String grado;
  final String nombre;
  final String placa;
  final String servicio;
  EstadoHomeExitoso({required this.grado, required this.nombre, required this.placa, required this.servicio});
}
class EstadoHomeFailure extends EstadosHome{}