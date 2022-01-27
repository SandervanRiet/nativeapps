import 'package:flutter/material.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: Scaffold(
      body: AppTree(),
      appBar: AppBar(title: Text("Titel van de app"),),
    ),
  );
}

class AppTree extends StatelessWidget {
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
        Image.asset("assets/images/bird1.jpg"),
        ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
        Image.network("https://boek.flutter.nl/libelle.jpg")
      ],
    );
  }
}