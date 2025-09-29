import 'package:bloc/bloc.dart';
import 'package:formulario/Presentacion/bloc2/estados2.dart';
import 'package:formulario/Presentacion/bloc2/eventos2.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class LogicaHome extends Bloc<EventosHome, EstadosHome> {
  LogicaHome() : super(EstadoHomeLoading()) {
    on<EventosHomeIniciarPeticion>((event, emit) async {
      Dio dio2 = new Dio();
      await Future.delayed(Duration(seconds: 2));
      try {
        Response response = await dio2.get('https://datos2-0.free.beeceptor.com/todos');

        
      } catch (e) {

      }



    });
  }
}



