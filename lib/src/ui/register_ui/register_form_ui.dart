import 'package:dreamgraphs/src/ui/custom_widget/form_ui.dart';
import 'package:flutter/material.dart';

class RegisterUi extends StatefulWidget{
  @override
  _RegisterUiState createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> with FormUi{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(
          fit: StackFit.expand, ////preguntar para que es esto
          children: <Widget>[
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 22.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/logo_dreamgraphs_register.png"),
                                alignment: Alignment.center,
                                fit: BoxFit.contain)),
                      ),
                      inputTextRegister(text: "Nombre Completo", obscureText: false),
                      inputTextRegister(text: "Correo Electronico", obscureText: false),
                      inputTextRegister(text: "Contraseña", obscureText: true),
                      inputTextRegister(text: "Repetir Contraseña", obscureText: true),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}