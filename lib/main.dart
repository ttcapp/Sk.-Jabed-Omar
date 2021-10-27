import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/image2.jpeg"),
            Image.asset("assets/image/png.png"),
            Image.asset("assets/image/image3.jpeg"),
            Image.asset("assets/image/image4.jpeg"),
            Image.asset("assets/image/imge5.jpg"),
          ],
        ),
      ),
    );
  }
}
