import 'package:flutter/material.dart';
import '06.menubalk/data.dart' as lib;

void main() {
  lib.title = "Een menubalk";
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  Widget build(BuildContext buildContext) => MaterialApp(
    home: DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(lib.title),
          bottom: TabBar(
              labelColor: lib.labelColor,
              indicatorColor: lib.indicatorColor,
              tabs: [
                Tab(text: lib.menu[0].title, icon: lib.menu[0].icon),
                Tab(text: lib.menu[1].title, icon: lib.menu[1].icon),
                Tab(text: lib.menu[2].title, icon: lib.menu[2].icon),
              ]),
        ),
        body:
        TabBarView(children: <Widget>[lib.menu[0].widget, lib.menu[1].widget, lib.menu[2].widget]),
      ),
    ),
  );
}

