import 'package:flutter/material.dart';

class InputBilangan extends StatefulWidget {
  const InputBilangan({super.key});

  @override
  InputBilanganPageState createState() => InputBilanganPageState();
}

class InputBilanganPageState extends State<InputBilangan> {
  final TextEditingController num1 = TextEditingController();
  String hasil = "";

  void checkNumber() {
    setState(() {
      String input = num1.text.trim();
      if (input.isEmpty) {
        hasil = 'Masukkan angka terlebih dahulu!';
        return;
      }

      int? number = int.tryParse(input);
      if (number == null) {
        hasil = 'Harap masukkan angka yang valid!';
        return;
      }

      hasil = number % 2 == 0
          ? 'Bilangan $number adalah Genap'
          : 'Bilangan $number adalah Ganjil';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cek Bilangan')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      controller: num1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          labelText: 'Masukkan bilangan',
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: checkNumber,
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15)),
                      child: const Text(
                        'Cek',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedOpacity(
              opacity: hasil.isNotEmpty ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                hasil,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
