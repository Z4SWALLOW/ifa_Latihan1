import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FormInput());
  }
}

class FormInput extends StatefulWidget {
  const FormInput({super.key});

  @override
  State<FormInput> createState() => _FormInputState();
}

class _FormInputState extends State<FormInput> {
  String? _jk;
  void pilihJK(String? value) {
    setState(() {
      _jk = value;
    });
  }

  List<String> agama = [
    "Islam",
    "Kristen",
    "Katolik",
    "Hindu",
    "Budha",
    "Konghucu",
    "Lainnya",
  ];

  String? _agama = "Islam";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.list),
        title: Text("Form Input"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 3,
              maxLength: 100,
              decoration: InputDecoration(
                hintText: "Alamat",
                labelText: "Alamat",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RadioListTile(
              value: "Laki-Laki",
              title: Text("Laki-Laki"),
              groupValue: _jk,
              onChanged: (String? value) {
                pilihJK(value!);
              },
              activeColor: Colors.lightBlue,
              subtitle: Text("Pilih ini jika Laki-Laki"),
            ),
            RadioListTile(
              value: "Perempuan",
              title: Text("Perempuan"),
              groupValue: _jk,
              onChanged: (String? value) {
                pilihJK(value!);
              },
              activeColor: Colors.lightBlue,
              subtitle: Text("Pilih ini jika Perempuan"),
            ),
            RadioListTile(
              value: "Custom",
              title: Text("Custom"),
              groupValue: _jk,
              onChanged: (String? value) {
                pilihJK(value!);
              },
              activeColor: Colors.lightBlue,
              subtitle: Text("Pilih ini jika Custom"),
            ),
          ],
        ),
      ),
    );
  }
}
