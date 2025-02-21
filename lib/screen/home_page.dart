import 'package:flutter/material.dart';
import 'package:flutter_layouting/screen/calculator_page.dart';
import 'package:flutter_layouting/screen/login_page.dart';

class HomePage extends StatelessWidget {
  final String email;

  HomePage(this.email);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Selamat Datang, Teknologi dan Pemrograman Mobile",
            style: TextStyle(fontSize: 12),
          ),
          SizedBox(height: 10),
          Text("Muhammad Alfi Ramadhan - 123220179"),
          SizedBox(height: 2),
          Text("Farizal Septin Efendi - 123220199"),
          SizedBox(height: 2),
          Text("Dewangga Mukti Wibawa - 123220201"),

          //menambahkan button untuk masuk menu pengurangan dan pertambahan
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CalculatorPage()));
            },
            child: Text("Main Menu"),
          )
        ],
      )),
    );
  }
}
