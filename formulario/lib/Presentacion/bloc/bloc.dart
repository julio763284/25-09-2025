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
  String url = 'htthttps://datos2-0.free.beeceptor.com/';

  try {
    Response response = await dio.post(
      url,
      data: {
        "correo": event.correo.trim(),
        "contraseña": event.contrasena.trim(),
      },
    );
     print('Status code: ${response.statusCode}');
     print('Response data: ${response.data}');

    if (response.statusCode == 201) {
      emit(EstadoExitosoFormularioapp());
    } else {
      emit(EstadoHomeFormularioapp());
    }
  } catch (e) {
    emit(EstadoHomeFormularioapp());
  }
});
  }
}
