import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "demo",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Demo App")),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
            child: Text(
          "Hello bhavik\n how are you?",
          style: TextStyle(color: Colors.red, fontSize: 30),
        )),
      ),
    );
  }
}
