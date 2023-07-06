import 'package:flutter/material.dart';
import 'package:share_ride/view/login_screen.dart';
import 'package:share_ride/view/todo.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      home: TODO(),
    );
  }
}
