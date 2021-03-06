import 'package:aplikasi_notepad/res/custom_colors.dart';
import 'package:aplikasi_notepad/screens/login_screen.dart';
import 'package:aplikasi_notepad/widgets/app_bar_title.dart';
import 'package:aplikasi_notepad/widgets/item_list.dart';
import 'package:flutter/material.dart';

import 'add_screen.dart';

class DbDashboardScreen extends StatefulWidget {
  @override
  _DbDashboardScreenState createState() => _DbDashboardScreenState();
}

class _DbDashboardScreenState extends State<DbDashboardScreen> {
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.firebaseNavy,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Palette.firebaseNavy,
        title: AppBarTitle(
          sectionName: 'MEMO',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DbAddScreen(),
            ),
          );
        },
        backgroundColor: Palette.firebaseOrange,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                right: 16.0,
                bottom: 20.0,
              ),
              child: DbItemList(),
            ),
            /*
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25.0, left: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: BackButton(),
                ),
              ),
            )
            */
          ],
        )
      ),
    );
  }
}
