library bibliotheek;

import 'package:flutter/material.dart';
import 'schermen.dart';

String title = "Titel van de app";
Color labelColor = Colors.black;
Color indicatorColor = Colors.black;

class Menu {
  String title;
  Icon icon;
  Widget widget;
  Menu(this.title, this.icon, this.widget);
}

List<Menu> menu = [
  Menu("Home", Icon(Icons.home), Scherm1()),
  Menu("Help", Icon(Icons.help), Scherm2()),
  Menu("Settings", Icon(Icons.settings), Scherm3())
];
