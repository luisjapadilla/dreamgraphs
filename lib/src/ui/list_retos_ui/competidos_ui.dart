import 'package:flutter/material.dart';

class CompetidosUI extends StatefulWidget {
  @override
  _CompetidosUIState createState() => _CompetidosUIState();
}

class _CompetidosUIState extends State<CompetidosUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Retos Competidos"),
      ),
    );
  }
}
