
import 'package:flutter/material.dart';

class Fallo extends StatelessWidget {
  const Fallo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        
        children: [
          Positioned(
            left: 80,
            right: 80,
            top: 120,
            bottom: 120,
            child: Container(
              height: 100.0,
              width: 80.0,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30.0),
                    height: 150.0,
                    width: 200.0,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("error-Photoroom.png")))),
                  SizedBox(height: 20.0,),
                  Text("Error De Conexion", style: TextStyle(fontSize: 40.0, color: Colors.white),),
                ],
              ),
            )
            )
        ],
      )
    );
  }
}