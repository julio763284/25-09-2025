import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formulario/Presentacion/bloc2/bloc2.dart';
import 'package:formulario/Presentacion/bloc2/estados2.dart';
import 'package:formulario/Presentacion/bloc2/eventos2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("FondoHomepage02redi.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.8,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Color.fromARGB(100, 0, 0, 0),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40.0),
                  Text(
                    "OFICIAL",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 35.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(360.0),
                      image: DecorationImage(
                        image: AssetImage("Reservistaredimensionado.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  BlocBuilder<LogicaHome, EstadosHome>(
                    builder: (context, state) {
                      if (state is EstadoHomeLoading) {
                        return HomeviewLoading();
                      } else if (state is EstadoHomeExitoso){
                        return HomeviewSuccess();
                      } else if (state is EstadoHomeFailure){
                        return HomeviewSuccess();
                      } else{
                        return HomeviewFailure();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeviewInitial extends StatelessWidget {
  const HomeviewInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Text("-----", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          SizedBox(height: 50.0),
          Text("-----", style: TextStyle(color: Colors.white, fontSize: 20.0)),
          SizedBox(height: 50.0),
          Text("-----", style: TextStyle(color: Colors.white, fontSize: 20.0)),
        ],
      ),
    );
  }
}

class HomeviewSuccess extends StatelessWidget {
  const HomeviewSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 320.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        children: [
          SizedBox(height: 15.0),
          Text("Grado", style: TextStyle(color: Colors.white, fontSize: 25.0)),
          Text(
            "Patrullero",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          SizedBox(height: 15.0),
          Text(
            "Nombre Oficial",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          Text(
            "Julio Andres Martinez Ramirez",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          SizedBox(height: 15.0),
          Text("Placa", style: TextStyle(color: Colors.white, fontSize: 25.0)),
          Text(
            "012345xj",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          SizedBox(height: 15.0),
          Text(
            "Tiempo de Servicio",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
          Text(
            "12 Meses",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}

class HomeviewLoading extends StatelessWidget {
  const HomeviewLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Cargando...",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          SizedBox(height: 50.0),
          Container(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class HomeviewFailure extends StatelessWidget {
  const HomeviewFailure({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 300.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Color.fromARGB(200, 0, 0, 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "R%R%R% ERROR R%R%R%",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
          SizedBox(height: 50.0),
          ElevatedButton.icon(onPressed: (){}, label: Text("ERROR"))
        ],
      ),
    );
  }
}
