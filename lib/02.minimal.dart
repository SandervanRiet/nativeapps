import 'package:flutter/material.dart';

void main() {
  //runApp(MijnStatelessWidget());
  runApp(MijnStatefulWidget());
}

// minimale stateless widget

class MijnStatelessWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,

    );
  }
}

// minimale stateful widget

class MijnStatefulWidget extends StatefulWidget {
  _MijnWidgetState createState() => _MijnWidgetState();
}

class _MijnWidgetState extends State<MijnStatefulWidget> {
  Color kleur = Colors.blue;

  void veranderKleur() {
    setState(() { kleur==Colors.blue ? kleur = Colors.red : kleur = Colors.blue; });
    print(kleur);
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kleur,
      ),
      onTap: veranderKleur,
    );
  }
}