class DatosUser {
  String? grado;
  String? nombre;
  String? placa;
  String? tiempoServicio;

  DatosUser(Map json){
  grado = json['patrullero'];
  nombre = json['Julio Andres Martinez Ramirez'];
  placa = json['012345xj'];
  tiempoServicio = json['1 año'];
  }
}