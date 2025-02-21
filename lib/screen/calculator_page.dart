import 'package:flutter/material.dart';
import 'package:flutter_layouting/services/calculator.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController num1 = TextEditingController();
  final TextEditingController num2 = TextEditingController();
  String result = "";
  final Calculator _calculator = Calculator();

  void _calculate(String operation) {
    double x = double.tryParse(num1.text) ?? 0;
    double y = double.tryParse(num2.text) ?? 0;

    setState(() {
      if (operation == "tambah") {
        result = "Hasil : ${_calculator.tambah(x, y)}";
      } else {
        result = "Hasil : ${_calculator.kurang(x, y)}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan angka pertama"),
            ),
            
            TextField(
              controller: num2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Masukkan angka kedua"),
            ),
            
            SizedBox(height: 20),
            
            ElevatedButton(
              onPressed: () => _calculate("tambah"),
              child: Text("Tambah (+)"),
            ),
            
            SizedBox(height: 10),
            
            ElevatedButton(
              onPressed: () => _calculate("kurang"),
              child: Text("Kurang (-)"),
            ),
            
            SizedBox(height: 20),
            
            Text(
              result,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
