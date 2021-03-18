import 'package:ajedre/src/providers/tablero_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BotonIniciar extends StatefulWidget {
  @override
  _BotonIniciarState createState() => _BotonIniciarState();
}

class _BotonIniciarState extends State<BotonIniciar> {
  int numero = 0;

  @override
  Widget build(BuildContext context) {
    final tableroProvider = Provider.of<TableroProvider>(context);

    return Container(
      child: ElevatedButton(
          onPressed: () {
            numero += 1;
            // print(numero);
            tableroProvider.currentIndex = numero;
          },
          child: Text("iniciar calculo")),
    );
  }
}
