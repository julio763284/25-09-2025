import 'package:bloc/bloc.dart';
import 'estados.dart';
import 'eventos.dart';
import 'dart:async';
import 'package:dio/dio.dart';

class Logicaapp extends Bloc<Eventosapp, Estadosapp> {
  Logicaapp() : super(EstadoInicialapp()) {
    on<Iniciarapp>((event, emit) async {
      emit(EstadoLoadingapp());
      await Future.delayed(Duration(seconds: 3));
      emit(EstadoHomeFormularioapp());
    });
    on<EnviarFormulario>((event, emit) async {
      emit(EstadoLoadingapp());
      await Future.delayed(Duration(seconds: 2));
      Dio dio = Dio();
      dynamic url = 'https://mocki.io/v1/e1ab5863-9fd6-42e7-a61c-5e8bcea34f67';
      Response response = await dio.post(
        url,
        data: {
          "nombre": event.nombrecompleto,
          "nacionalidad": event.nacionalidad,
          "Lengua": event.lenguamaterna,
          "Edad": event.edad,
        },
      );
      if (response.statusCode == 201) {
        emit(EstadoExitosoFormularioapp());
      } else {
        emit(EstadoHomeFormularioapp());
      }
    });
  }
}
