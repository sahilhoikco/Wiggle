import 'package:flutter/material.dart';
import 'package:wiggle/view/HomePage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wiggle',
      theme: ThemeData(fontFamily: 'SFpro'),
      home: const HomePage(),
    );
  }
}
