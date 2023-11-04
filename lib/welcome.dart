import 'package:flutter/material.dart';
import 'package:kisaan_saathi/screens/WelcomeScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      title: "Kisaan Saathi",
    );
  }
}
