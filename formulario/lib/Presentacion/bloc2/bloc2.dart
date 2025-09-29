import 'package:bloc/bloc.dart';
import 'package:formulario/Presentacion/bloc2/estados2.dart';
import 'package:formulario/Presentacion/bloc2/eventos2.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:formulario/Presentacion/models/models.dart';

class LogicaHome extends Bloc<EventosHome, EstadosHome> {
  LogicaHome() : super(EstadoHomeLoading()) {
    on<EventosHomeIniciarPeticion>((event, emit) async {
      Dio dio2 = Dio();
      await Future.delayed(Duration(seconds: 2));
      try {
        String url = "https://gist.githubusercontent.com/julio763284/6ed121035f47c4cef86435635171e811/raw/27a46b60d119c68bfd8d0bc388b782a82c74168d/gistfile1.txt";
        Response response = await dio2.get(url);
        if (response.statusCode == 200) {
          dynamic informacion = jsonDecode(response.data);
          DatosUser data = DatosUser(informacion);
          emit(EstadoHomeExitoso(data.grado,data.nombre,data.placa,data.tiempoServicio));
        } else {
          emit(EstadoHomeFailure());
        }
      } catch (e) {
        emit(EstadoHomeFailure());
      }
    });
  }
}



