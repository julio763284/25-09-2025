import 'package:bloc/bloc.dart';
import 'estados.dart';
import 'eventos.dart';
import 'dart:async';

class Logicaapp extends Bloc<Eventosapp, Estadosapp> {
  Logicaapp() : super(EstadoInicialapp()) {
    on<Iniciarapp>((event, emit) async {
      emit(EstadoLoadingapp());
      await Future.delayed(Duration(seconds: 3));
      emit(EstadoFormularioapp());
    });
    on<EnviarFormulario>((event, emit) async {
      emit(EstadoLoadingapp());
      await Future.delayed(Duration(seconds: 3));
      emit(EstadoExitosoFormularioapp());
    });
  }
}