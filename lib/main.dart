import 'package:animacoes_complexas/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animacoes_complexas/screens/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'TurismoSP',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
