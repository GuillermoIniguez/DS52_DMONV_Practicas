import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tablero de Ajedrez'),
        ),
        body: Center(
          child: ChessBoard(),
        ),
      ),
    );
  }
}

class ChessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        4,
        (rowIndex) => Expanded(
          child: Row(
            children: List.generate(
              4,
              (colIndex) {
                // Alternar colores blanco y negro
                Color color =
                    (rowIndex + colIndex) % 2 == 0 ? Colors.white : Colors.black;
                return ChessSquare(color: color);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ChessSquare extends StatelessWidget {
  final Color color;

  ChessSquare({required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: color,
      ),
    );
  }
}
