import 'package:flutter/material.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
      home: Pagina1()
  );
}

class Pagina1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("Dynamische navigatie"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
          child: ElevatedButton(
            child: Icon(Icons.arrow_forward),
            onPressed: () => {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina2())
            )
          },
          )
      ),
    );
  }
}

class Pagina2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Dynamische navigatie: tweede pagina"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          child: ElevatedButton(
            child: Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => Pagina1())
              )
            },
          )
      ),
    );
  }
}