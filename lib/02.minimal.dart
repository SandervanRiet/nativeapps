import 'dart:math';

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
  List<Color> kleuren = [Colors.blue, Colors.red, Colors.green, Colors.yellow, Colors.orange, Colors.purple];
  Random gen = Random();
  List<Color> usedKleuren=[];
  late Color kleur;

  @override
  void initState() {
    kleur = kleuren[gen.nextInt(kleuren.length)];
    super.initState();
  }

  void veranderKleur() {
    setState(() {
      kleur = getKleur();
    });
  }

  Color getKleur() {
    if (kleuren.isEmpty){
      kleuren=usedKleuren;
      usedKleuren=[];
    }
    kleur = kleuren[gen.nextInt(kleuren.length)];
    usedKleuren.add(kleur);
    kleuren.remove(kleur);
    return kleur;
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