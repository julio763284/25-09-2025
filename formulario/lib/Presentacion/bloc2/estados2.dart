class EstadosHome {}

class EstadoHomeLoading extends EstadosHome{}
class EstadoHomeExitoso extends EstadosHome{
  final String? grado;
  final String? nombre;
  final String? placa;
  final String? servicio;
  EstadoHomeExitoso(this.grado, this.nombre, this.placa, this.servicio);
}
class EstadoHomeFailure extends EstadosHome{}