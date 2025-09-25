
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

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
              decoration: BoxDecoration(color: Color.fromARGB(200, 0, 0, 10)),
            )
          ),
          Positioned(
            top: 200.0,
            bottom: 200.0,
            left: 100.0,
            right: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Cargando...", style: TextStyle(fontSize: 40.0, color: Colors.white, fontStyle: FontStyle.italic),),
                SizedBox(height: 50.0,),
                Container(
                  height: 90,
                  width: 90,
                  child: CircularProgressIndicator(color: Colors.white,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}