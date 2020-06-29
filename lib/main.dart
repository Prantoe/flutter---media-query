import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),

      // (syarat) ? kalau benar : kalau salah 
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              // body: container()
              // width: MediaQuery.of(contex).size.width / 2
              children: generateContainers(),
            )
          : Row(
              children: generateContainers()  ,
            ),
    );
  }

  List<Widget> generateContainers() {
    return <Widget>[
      Container(color: Colors.red, width: 100, height: 100),
      Container(color: Colors.amber, width: 100, height: 100),
      Container(color: Colors.blueAccent, width: 100, height: 100),
    ];
  }
}
