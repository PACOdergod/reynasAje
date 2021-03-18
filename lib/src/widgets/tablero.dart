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
      child: _tablero(4, 4),
    );
  }
}

Widget _tablero(int filas, int columnas) {
  List<Widget> widgetColumnas = [];
  int fcol;
  //TODO: esta solucion es muy complicada hay que optimisarla
  for (var i = 0; i < filas; i++) {
    //TODO: se debe crear la lista del tamaño final
    var lista = [];
    // print(i);

    for (var o = 1; o <= columnas; o++) {
      if (fcol == null) {
        fcol = 0;
      }
      lista.add(o + fcol);
      if (o == columnas) {
        fcol = lista.last;
      }
    }
    // print(lista);

    var widgetColumna = _columna(columnas, lista);
    widgetColumnas.add(widgetColumna);
  }

  return Container(
    child: Row(children: widgetColumnas),
  );
}

Widget _columna(int columnas, List lista) {
  return Column(
    children: List.generate(columnas, (i) => Casilla(lista[i])),
  );
}

class Casilla extends StatelessWidget {
  final int index;
  final Color color;

  Casilla(this.index, {this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    final i = Provider.of<TableroProvider>(context).currentIndex;

    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(border: Border.all(width: 2.0), color: color),
      child: Text(this.index.toString()),
    );
  }
}
