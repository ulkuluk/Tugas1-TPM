import 'package:flutter/material.dart';
import 'package:flutter_layouting/screen/calculator_page.dart';
import 'package:flutter_layouting/screen/login_page.dart';
import 'package:flutter_layouting/screen/penghitungDigit_page.dart';
import 'package:flutter_layouting/screen/inputBilangan.dart';

class HomePage extends StatelessWidget {
  final String email;

  const HomePage(this.email, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Selamat Datang, Teknologi dan Pemrograman Mobile",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text("Muhammad Alfi Ramadhan - 123220179"),
                  const Text("Farizal Septin Efendi - 123220199"),
                  const Text("Dewangga Mukti Wibawa - 123220208"),
                  const SizedBox(height: 20),
                  _buildButton(context, "Kalkulator", CalculatorPage()),
                  const SizedBox(height: 15),
                  _buildButton(
                      context, "Menghitung Banyak Angka", HitungDigitPage()),
                  const SizedBox(height: 15),
                  _buildButton(context, "Cek Bilangan", InputBilangan()),
                  const SizedBox(height: 15),
                  _buildButton(context, "LogOut", LoginPage()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
