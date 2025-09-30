class DatosUser {
  String? grado;
  String? nombre;
  String? placa;
  String? tiempoServicio;

  DatosUser(Map json){
  grado = json["grado"];
  nombre = json["nombre"];
  placa = json["placa"];
  tiempoServicio = json["añosdeservicio"];
  }
}