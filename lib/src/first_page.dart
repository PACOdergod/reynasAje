import 'package:ajedre/src/providers/tablero_provider.dart';
import 'package:ajedre/src/widgets/boton_iniciar.dart';
import 'package:ajedre/src/widgets/tablero.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TableroProvider(),
      child: Scaffold(
        appBar: AppBar(title: Text("Analizar tableros"),),
        body: Container(
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Center(child: Tablero()), 
              SizedBox(height: 50),
              BotonIniciar()
            ],
        ),),
      ),
    );
  }
}
