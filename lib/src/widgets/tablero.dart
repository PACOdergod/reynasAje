import 'package:ajedre/src/providers/tablero_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Tablero extends StatefulWidget {
  @override
  _TableroState createState() => _TableroState();
}

class _TableroState extends State<Tablero> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO: las filas y las columnas estan alreves
      child: _tablero(5, 5),
    );
  }
}

Widget _tablero(int filas, int columnas) {
  List<Widget> widgetColumnas = [];
  int fcol;
  //TODO: esta solucion es muy complicada hay que optimisarla
  for (var i = 0; i < filas; i++) {
    //TODO: se debe crear la listaIndices del tamaño final
    var listaIndices = [];
    // print(i);

    for (var o = 1; o <= columnas; o++) {
      if (fcol == null) {
        fcol = 0;
      }
      listaIndices.add(o + fcol);
      if (o == columnas) {
        fcol = listaIndices.last;
      }
    }
    // print(listaIndices);

    var widgetColumna = _columna(columnas, listaIndices, i);
    widgetColumnas.add(widgetColumna);
  }

  return Container(
    child: Row(children: widgetColumnas),
  );
}

Widget _columna(int columnas, List listaIndices, int fila) {
  return Column(
    children: List.generate(columnas, (i) => Casilla(listaIndices[i], i, fila)),
  );
}

class Casilla extends StatelessWidget {
  final int index;
  final int indexF;
  final int indexC;
  final Color color;

  Casilla(this.index,this.indexF,this.indexC, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    final i = Provider.of<TableroProvider>(context).currentIndex;

    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(width: 2.0), 
        color: i == index ? Colors.red : color
      ),
      child: Column(
        children: [
          Text("index: ${this.index}"),
          Text("columna: ${this.indexC}"),
          Text("fila: ${this.indexF}"),
          Text("b: ${this.indexC - this.indexF}"),
          Text("b: ${this.indexF + this.indexC}")
      ],),
    );
  }
}
