import 'package:flutter/material.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
        home: Scaffold(
          body: AppTree(),
          appBar: AppBar(
            title: Text("Titel van de app"),
          ),
        ),
      );
}

class chessBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 300,
      width: 300,
      child: makeBoard(),
    );
  }

  Widget makeBoard() {
    Widget board = Column();
    List<Widget> rows = [];
    Color kleur = Colors.black;
    for (int i = 0; i < 8; i++) {
      rows.add(Expanded(child: Container(color: kleur)));
      kleur = kleur == Colors.black ? Colors.white : Colors.black;
    }
    rows.add(Expanded(child:Row( children: cols)));
    kleur=kleur==Colors.black ? Colors.white : Colors.black;

    return board;
  }
}

class AppTree extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Row(
        children: [
          Expanded(
            child: Container(
                color: Colors.red,
                child: Center(child: Text("Container 1")),
                height: 250),
          ),
          Expanded(
            flex: 2,
            child: Container(
                color: Colors.white,
                child: Center(child: Text("Container 1")),
                height: 250),
          ),
          Expanded(
            child: Container(
                color: Colors.black,
                child: Center(child: Text("Container 1")),
                height: 250),
          )
        ],
      ),
      Stack(
        children: <Widget>[
          Container(
              color: Colors.green,
              child: Center(child: Text("Container 2 bevat heel veel tekst.")),
              height: 500),
          Positioned(
              left: 20,
              top: 10,
              child: Container(
                color: Colors.white,
                height: 40,
                width: 40,
              ),

          ),Positioned(
              left: 70,
              top: 70,
              child: chessBoard())

        ],
      ),
      Row(
        children: <Widget>[
          Expanded(
              child: Container(
            color: Colors.purple,
            child: Center(child: Text("Container 3a")),
            height: 250,
          )),
          Expanded(
              child: Container(
            color: Colors.orange,
            child: Center(child: Text("Container 3b")),
            height: 250,
          )),
        ],
      ),
      Stack(children: <Widget>[
        Container(
          color: Colors.blue,
          child: Center(child: Text("Container 4a")),
          height: 250,
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Container(
            color: Colors.yellow.withOpacity(0.7),
            child: Center(child: Text("Container 4b")),
            width: 100,
            height: 100,
          ),
        ),
      ])
    ]);
  }
}
