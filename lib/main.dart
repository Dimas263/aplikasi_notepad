import 'package:flutter/material.dart';
import 'package:aplikasi_notepad/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
        fontFamily: 'OpenSans',
      ),
      home: DbLoginScreen(),
    );
  }
}
