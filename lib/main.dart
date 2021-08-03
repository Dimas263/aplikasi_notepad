import 'package:flutter/material.dart';

import 'screens/main_screens/home_screen.dart';
import 'package:aplikasi_notepad/screens/database/crud/db_login_screen.dart';

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
      // home: SignInScreen(),
      //home: HomeScreen(),
      home: DbLoginScreen(),
    );
  }
}
