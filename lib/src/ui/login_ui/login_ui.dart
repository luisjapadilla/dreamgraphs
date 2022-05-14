import 'package:flutter/material.dart';
import 'package:dreamgraphs/src/ui/custom_widget/form_ui.dart';

class LoginUi extends StatefulWidget {
  @override
  _LoginUiState createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> with FormUi{
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Center(
            child: Image.asset(
              'assets/images/fondo_login.png',
              width: size.width,
              height: size.height,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(color: Colors.black.withOpacity(.4)),
            width: size.width,
            height: size.height,
          ),
          Center(
              child: Container(
            padding: EdgeInsets.symmetric(horizontal: 36),
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
                                "assets/images/logo_dreamgraphs_login.png"),
                            alignment: Alignment.center,
                            fit: BoxFit.contain)),
                  ),
                  inputTextLogin(
                      icon: Icons.email, text: "Usuario", obscureText: false, controller: TextEditingController()),
                  inputTextLogin(
                      icon: Icons.lock_outline,
                      text: "Contraseña",
                      obscureText: true),
                  resetPassword(context: context,),
                  buttonLogin(context, "LOGIN"),
                  socialLogin(),
                  SizedBox(
                    height: 60,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF08C1CE),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "No tiene una cuenta? ",
                          style: TextStyle(color: Colors.white),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacementNamed("/register");
                          },
                          child: Text(
                            "Resgistrese aqui",
                            style: TextStyle(
                              color: Color(0xFF08C1CE),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
