import 'package:dreamgraphs/src/ui/home_ui/home_ui.dart';
import 'package:dreamgraphs/src/ui/login_ui/login_ui.dart';
import 'package:dreamgraphs/src/ui/menu_ui/menu_drawer_ui.dart';
import 'package:dreamgraphs/src/ui/register_ui/register_form_ui.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dreamgraphs',
      theme: ThemeData(
        primaryColor: const Color(0xFF08C1CE),
        fontFamily: 'Abel'
      ),
      routes: <String, WidgetBuilder>{
        "/home": (BuildContext context) => HomeUI(),
        "/menu": (BuildContext context) => MenuDrawerUI(),
        "/register": (BuildContext context) => RegisterUi(),
      },
      home: LoginUi(),
    );
  }
}

