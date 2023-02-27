import 'package:flutter/material.dart';
import '06.menubalk.oef.1/data.dart' as lib;

void main() {
  lib.title = "Een menubalk";
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) {
      List<Tab> tabs=[];
      List<Tab> tabs2=lib.menu.map((m) =>(Tab(text: m.title,icon: m.icon))).toList();
      List<Widget> widgets2=lib.menu.map((m) =>(m.widget);
      List<Widget> widgets=[];
      lib.menu.forEach((m) { tabs.add(Tab(text: m.title,icon: m.icon));});
      lib.menu.forEach((m) { widgets.add(m.widget);});
     return MaterialApp(
  home: DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(lib.title),
          bottom: TabBar(
              labelColor: lib.labelColor,
              indicatorColor: lib.indicatorColor,
              tabs: [
                Tab( icon: lib.menu[0].icon),
                Tab( icon: lib.menu[1].icon),
                Tab( icon: lib.menu[2].icon),
                Tab( icon: lib.menu[3].icon),
                Tab( icon: lib.menu[4].icon),
              ]),
        ),
        body:
        TabBarView(children: <Widget>[lib.menu[0].widget, lib.menu[1].widget, lib.menu[2].widget,lib.menu[3].widget,lib.menu[4].widget]),
      ),
    ),
  );}
}

