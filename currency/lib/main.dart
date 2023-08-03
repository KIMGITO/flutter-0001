import 'package:currency/interface.dart';
import 'package:flutter/material.dart';

void main() => runApp(CurrencyApp());

class CurrencyApp extends StatelessWidget {
  const CurrencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(255, 27, 6, 219),
          title: const Center(
            child: Text("Currency Converter "),
          ),
        ),
        body: const Interface(),
      ),
    ));
  }
}
