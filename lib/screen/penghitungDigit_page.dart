import 'package:flutter/material.dart';
import 'package:flutter_layouting/services/penghitung_digit.dart';

class HitungDigitPage extends StatefulWidget {
  const HitungDigitPage({super.key});

  @override
  PenghitungDigitPageState createState() => PenghitungDigitPageState();
}

class PenghitungDigitPageState extends State<HitungDigitPage> {
  final TextEditingController num1 = TextEditingController();
  final penghitungDigit hitungAngka = penghitungDigit();
  String resultAngka = "";
  String resultDesimal = "";

  void hitung() {
    double x = double.tryParse(num1.text) ?? 0;

    setState(() {
      resultAngka = "Banyak Angka : ${hitungAngka.hitungDigit(x)}";
      resultDesimal = "Banyak Angka Dibelakang Koma(,) : ${hitungAngka.hitungDigitDesimal(x)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        title: Text("Hitung Angka"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: num1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Masukkan Angka",
                      prefixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () => hitung(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                    ),
                    child: Text(
                      "Lihat Banyak Angka",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    resultAngka,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    resultDesimal,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
