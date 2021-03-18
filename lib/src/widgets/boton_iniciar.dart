import 'package:flutter/material.dart';


class BotonIniciar extends StatelessWidget {
  int numero = 0;
  
  // @override
  // void initState() {
  //   super.initState();

  //   // indexController.addListener(() {
  //   //   Provider.of<TableroProvider>(context, listen: false).currentIndex = numero;

  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            numero += 1;
            print(numero);
          },
          child: Text("iniciar calculo")),
    );
  }
}
