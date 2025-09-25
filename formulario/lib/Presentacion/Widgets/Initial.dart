import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formulario/Presentacion/bloc/bloc.dart';
import 'package:formulario/Presentacion/bloc/eventos.dart';


class Initial extends StatelessWidget {
  const Initial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
                Positioned(
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                        height: 700.0,
                        width: 500.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("FondoInicial02redimensionado.jpg"), fit: BoxFit.cover)
                        ),
                    )
                ),
                Positioned(
                    left: 60.0,
                    right: 60.0,
                    top: 60.0,
                    bottom: 60.0,
                    child: Container(
                        padding: EdgeInsets.all(40.0),
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(color: Color.fromARGB(100, 0, 0, 10), borderRadius: BorderRadius.circular(30.0)),
                        child: Column(
                            children: [
                                SizedBox(height: 80.0,),
                                Text("HONOR Y DEBER", style: TextStyle(fontSize: 30.0, color: Colors.white),),
                                SizedBox(height: 50.0,),
                                Text("Protege a tu pais y las personas que mas amas", style: TextStyle(fontSize: 25.0, color: Colors.white, fontStyle: FontStyle.italic),),
                                SizedBox(height: 50.0,),
                                ElevatedButton.icon(onPressed: (){
                                    context.read<Logicaapp>().add(Iniciarapp());
                                    },
                                    style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(100, 0, 0, 0),
        
                                        ),
                                    icon: Icon(Icons.military_tech_sharp, color: Colors.white,),
                                    label: Text("UNETE YA", style: TextStyle(fontSize: 15.0, color: Colors.white, fontStyle: FontStyle.italic),))
                                ],
                            ),
                    )
                )
            ],
        )
    );
  }
}