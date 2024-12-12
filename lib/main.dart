import 'package:flutter/material.dart';
import 'package:viithiisys_app/presentation/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Viithisys App',
        debugShowCheckedModeBanner: false,
        home: MainPage());
  }
}
