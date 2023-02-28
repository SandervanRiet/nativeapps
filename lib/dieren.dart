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
        title: Text("vogels : parkiet"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Row(
            children: [
          Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_forward),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pagina2())
                        )
                      },

                    )

              )],
          ),
            ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
            Image.asset("assets/images/bird1.jpg"),
          Container(child: Text("Vogels (Aves) zijn een klasse van warmbloedige, gewervelde dieren die gekenmerkt worden door het bezit van veren, een hol maar sterk skelet, en de aangepaste voorste ledematen die hen in beginsel het vermogen geeft te vliegen. Vogels komen wereldwijd voor, in zeer uiteenlopende milieus. Sommige zijn aangepast aan het leven in water, zoals zeevogels, andere aan het leven op het land, zoals loopvogels, en weer andere zijn behendige vliegers. Er zijn meer dan tienduizend soorten beschreven, waarvan meer dan de helft tot de zangvogels behoren."),)
        ],
      )
    );
  }
}

class Pagina2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("python"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () => {
                        Navigator.pop(context)

                      },

                    )
                ),Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_forward),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pagina3())
                        )
                      },

                    )

                )],
            ),
            ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
            Image.asset("assets/images/python.jpg"),
            Container(child: Text("Vogels (Aves) zijn een klasse van warmbloedige, gewervelde dieren die gekenmerkt worden door het bezit van veren, een hol maar sterk skelet, en de aangepaste voorste ledematen die hen in beginsel het vermogen geeft te vliegen. Vogels komen wereldwijd voor, in zeer uiteenlopende milieus. Sommige zijn aangepast aan het leven in water, zoals zeevogels, andere aan het leven op het land, zoals loopvogels, en weer andere zijn behendige vliegers. Er zijn meer dan tienduizend soorten beschreven, waarvan meer dan de helft tot de zangvogels behoren."),)
          ],
        )
    );
  }
}

class Pagina3 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("kameleon"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () => {
                        Navigator.pop(context)

                      },

                    )
                ),Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_forward),
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pagina4())
                        )
                      },

                    )

                )],
            ),
            ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
            Image.asset("assets/images/kameleon.jpg"),
            Container(child: Text("Vogels (Aves) zijn een klasse van warmbloedige, gewervelde dieren die gekenmerkt worden door het bezit van veren, een hol maar sterk skelet, en de aangepaste voorste ledematen die hen in beginsel het vermogen geeft te vliegen. Vogels komen wereldwijd voor, in zeer uiteenlopende milieus. Sommige zijn aangepast aan het leven in water, zoals zeevogels, andere aan het leven op het land, zoals loopvogels, en weer andere zijn behendige vliegers. Er zijn meer dan tienduizend soorten beschreven, waarvan meer dan de helft tot de zangvogels behoren."),)
          ],
        )
    );
  }
}

class Pagina4 extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text("krokodil"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                    child: ElevatedButton(
                      child: Icon(Icons.arrow_back),
                      onPressed: () => {
                        Navigator.pop(context)

                      },

                    )
                )],
            ),
            ConstrainedBox(constraints: BoxConstraints(minHeight: 20), child: Container()),
            Image.asset("assets/images/krokodil.jpg"),
            Container(child: Text("Vogels (Aves) zijn een klasse van warmbloedige, gewervelde dieren die gekenmerkt worden door het bezit van veren, een hol maar sterk skelet, en de aangepaste voorste ledematen die hen in beginsel het vermogen geeft te vliegen. Vogels komen wereldwijd voor, in zeer uiteenlopende milieus. Sommige zijn aangepast aan het leven in water, zoals zeevogels, andere aan het leven op het land, zoals loopvogels, en weer andere zijn behendige vliegers. Er zijn meer dan tienduizend soorten beschreven, waarvan meer dan de helft tot de zangvogels behoren."),)
          ],
        )
    );
  }
}