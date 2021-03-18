import 'package:ajedre/src/boton_iniciar.dart';
import 'package:ajedre/src/tablero.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(title: Text("Analizar tableros"),),
        body: _inicio(),
      ),
    );
  }
}
//  CrearTablero()
Widget _inicio(){
  return Container(child: 
    Column(children: [ 
      Center(child: Tablero()), 
      SizedBox(height: 50),
      BotonIniciar()
    ],
    crossAxisAlignment: CrossAxisAlignment.start,
  ),);
}

