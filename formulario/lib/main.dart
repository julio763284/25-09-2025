import 'package:flutter/material.dart';
import 'package:formulario/Presentacion/Widgets/Initial.dart';
import 'package:formulario/Presentacion/Widgets/formulario.dart';
import 'package:formulario/Presentacion/Widgets/loading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formulario/Homepage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage(),
    );
  }
}






