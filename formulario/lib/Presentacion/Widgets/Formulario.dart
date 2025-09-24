import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  const Formulario({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leading: Icon(Icons.military_tech_outlined, color: Colors.white,),title: Text("Legion Internacional", style: TextStyle(fontSize: 35.0, color: Colors.white, fontStyle: FontStyle.italic),), backgroundColor: Color.fromARGB(200, 0, 0, 0), centerTitle: true,),
        body: Stack(
            children: [
                Positioned(
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                    height: 600.0,
                    width: 500.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("FondoFormularioRedimensionado.jpg"),
                        fit: BoxFit.cover)
                    ),
                    )
                ),
                Positioned(
                    top: 65.0,
                    left: 20.0,
                    right: 20.0,
                    child: Column(
                        children: [
                            Text("¡UNETE Y HAS LA DIFERENCIA!", style: TextStyle(fontSize: 25.0, color: const Color.fromARGB(255, 255, 255, 255)),),
                            SizedBox(height: 20.0,),
                            Container(
                                padding: EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
                                width: 300.0,
                                height: 400.0,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(64, 0, 0, 0),
                                    borderRadius: BorderRadius.circular(30.0)
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                        SizedBox(height: 20.0,),
                                        TextFormField(decoration: InputDecoration(filled: true, fillColor: Color.fromARGB(100, 0, 0, 0),label: Text("Nombre y Apellidos", style: TextStyle(color: Colors.white),), border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))), style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                                        SizedBox(height: 20.0,),
                                        TextFormField(decoration: InputDecoration(filled: true, fillColor: Color.fromARGB(100, 0, 0, 0),label: Text("Pais De Origen", style: TextStyle(color: Colors.white),), border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))), style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                                        SizedBox(height: 20.0,),
                                        TextFormField(decoration: InputDecoration(filled: true, fillColor: Color.fromARGB(100, 0, 0, 0),label: Text("Lengua Materna", style: TextStyle(color: Colors.white)), hintText: 'Ej: Español' , hintStyle: TextStyle(color: Colors.white), border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))), style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                                        SizedBox(height: 20.0,),
                                        TextFormField(decoration: InputDecoration(filled: true, fillColor: Color.fromARGB(100, 0, 0, 0) ,label: Text('Edad', style: TextStyle(color: Colors.white)), helperText: 'Solo Numeros', helperStyle: TextStyle(color: Colors.white, backgroundColor: Color.fromARGB(100, 0, 0, 0)), hintText: 'Ingrese Su Edad', hintStyle: TextStyle(color: Colors.white), border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                                        SizedBox(height: 20.0,),
                                        ElevatedButton.icon(onPressed: (){
                                            print("!Boton Presionado¡");
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color.fromARGB(100, 0, 0, 0),
        
                                        ),
                                        icon: Icon(Icons.upload, color: Colors.white,),
                                        label: Text("Enviar", style: TextStyle(color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.italic),))
                                    ],
                                ),
                            )
        
                        ],
                    )
                )
            ],
        ),
    );
  }
}