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
            SizedBox(
              height: 10,
            ),
            Text("Universitas Teknokrat Indonesia"),
            SizedBox(
              height: 10,
            ),
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
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text("data 1 "),
                Text("data 2 "),
                Text("data 3 "),
                Text("data 4 "),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.cyan,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.red,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.green,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.black,
                ),
                Container(
                  height: 30,
                  width: 30,
                  color: Colors.grey,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CustomPaint(
              size: Size(200, 200),
              painter: segitiga(),
            ),
          ],
        ),
      ),
    );
  }
}

class segitiga extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.green;
    final path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
