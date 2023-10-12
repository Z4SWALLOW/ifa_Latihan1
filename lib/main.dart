import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Latihan1",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Latihan 1"),
        ),
        body: Column(
          children: [
            Text("Universitas Teknokrat Indonesia"),
            Container(
              height: 50,
              width: 430,
              color: Colors.cyan,
              child: Row(
                children: [
                  Text("data 1 "),
                  Text("data 1 "),
                  Text("data 1 "),
                ],
              ),
            ),
            Row(
              children: [
                Text("data 1 "),
                Text("data 2 "),
                Text("data 3 "),
                Text("data 4 "),
              ],
            )
          ],
        ),
      ),
    );
  }
}
