library bibliotheek;

import 'package:flutter/material.dart';
import 'schermen.dart';

String title = "vervoersmidellen";
Color labelColor = Colors.black;
Color indicatorColor = Colors.black;

class Menu {
  String title;
  Icon icon;
  Widget widget;
  Menu(this.title, this.icon, this.widget);
}

List<Menu> menu = [
  Menu("Home", Icon(Icons.directions_boat), Scherm1()),
  Menu("Help", Icon(Icons.directions_bike), Scherm2()),
  Menu("Settings", Icon(Icons.directions_car), Scherm3()),
  Menu("Settings", Icon(Icons.directions_train), Scherm4()),
  Menu("Settings", Icon(Icons.directions_bus), Scherm5())
];
