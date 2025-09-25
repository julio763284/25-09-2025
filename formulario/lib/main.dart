import 'package:flutter/material.dart';
import 'package:formulario/Presentacion/Widgets/Initial.dart';
import 'package:formulario/Presentacion/Widgets/formulario.dart';
import 'package:formulario/Presentacion/Widgets/loading.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formulario/Homepage.dart';
import 'package:formulario/Presentacion/bloc/bloc.dart';
import 'package:formulario/Presentacion/bloc/estados.dart';
import 'package:formulario/Presentacion/Widgets/failure.dart';
import 'package:formulario/Presentacion/bloc/eventos.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => Logicaapp(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocListener<Logicaapp, Estadosapp>(
        listener: (context, state) {
          if (state is EstadoExitosoFormularioapp) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          } 
        },
        child: BlocBuilder<Logicaapp, Estadosapp>(
          builder: (context, state) {
            if (state is EstadoInicialapp) {
              return Initial();
            } else if (state is EstadoLoadingapp) {
              return Loading();
            } else if (state is EstadoFormularioapp){
              return Formulario();
            } else {
              return Fallo();
            }
          },
        ),
      ),
    );
  }
}
