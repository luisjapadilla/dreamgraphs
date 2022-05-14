import 'package:flutter/material.dart';

mixin FormUi {
   Widget inputTextLogin(
      {required TextEditingController controller,
      required String text,
      required bool obscureText}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Color(0xFF000000).withOpacity(.5),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: TextField(
        cursorColor: Colors.white,
        obscureText: obscureText,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: text,
          hintStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

   Widget inputSearch(
       {required TextEditingController controller,
         required String text}) {
     return Expanded(
       child: Container(
         margin: EdgeInsets.only(bottom: 0),
         decoration: BoxDecoration(
             color: Colors.grey.withOpacity(.5),
             borderRadius: BorderRadius.all(Radius.circular(25))),
         child: TextField(
           cursorColor: Colors.white,
           style: TextStyle(color: Colors.white),
           decoration: InputDecoration(
             contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
             border: InputBorder.none,
             hintText: text,
             hintStyle: TextStyle(color: Colors.white),
           ),
         ),
       ),
     );
   }

   Widget inputTextRegister(
       {required TextEditingController controller,
         required IconData icon,
         required String text,
         required bool obscureText}) {
     return Container(
       margin: EdgeInsets.symmetric(vertical: 10),
       decoration: BoxDecoration(
           color: Color(0xFF000000).withOpacity(.1),
           borderRadius: BorderRadius.all(Radius.circular(5))),
       child: TextField(
         cursorColor: Colors.black,
         obscureText: obscureText,
         style: TextStyle(color: Colors.black),
         decoration: InputDecoration(
           border: InputBorder.none,
           hintText: text,
           hintStyle: TextStyle(color: Colors.black),
           prefixIcon: Icon(
             icon,
             color: Colors.black,
           ),
         ),
       ),
     );
   }
   Widget resetPassword({
     required BuildContext context,
     required TextEditingController controller}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Olvido su contraseña? ",
              style: TextStyle(color: Colors.white),
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    // return object of type Dialog
                    return AlertDialog(
                        contentPadding: EdgeInsets.only(
                            bottom: 0, left: 20, right: 20, top: 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        title: Text(
                          "Por favor ingrese su correo electronico",
                          style: TextStyle(
                              fontWeight: FontWeight.normal, fontSize: 16),
                        ),
                        content: Container(
                          height: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              inputTextLogin(
                                  text: "Correo electronico",
                                  obscureText: false,
                                controller: TextEditingController() ),
                              Text(
                                  "*Recibirá un correo de confirmación para recuperar su cuenta"),
                              Container(
                                width: MediaQuery.of(context).size.width / 2,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 22.0),
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  padding: EdgeInsets.symmetric(vertical: 15),
                                  child: Text(
                                    "Recuperar",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  color: Color(0xFF08C1CE),
                                  elevation: 4,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
                              )
                            ],
                          ),
                        ));
                  },
                );
              },
              child: Text(
                "Recuperala aqui",
                style: TextStyle(color: Color(0xFF08C1CE)),
              ),
            )
          ],
        ),
      ),
    );
  }
  /**
   * context
   * String que sera el nombre dentro del boton*/
   Widget buttonLogin(BuildContext context, String texto) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 22.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed("/home");
        },
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Text(
          texto,
          style: TextStyle(color: Colors.white),
        ),
        color: Color(0xFF08C1CE),
        elevation: 4,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    );
  }

   Widget buttonGeneric(BuildContext context, String texto, dynamic func, double width) {
     return Container(
       width: width,
       child: RaisedButton(
         onPressed: func,
         child: Text(
           texto,
           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
         ),
         color: Color(0xFF08C1CE),
         elevation: 4,
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.all(Radius.circular(5))),
       ),
     );
   }

   Widget socialLogin() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/google.png"),
                      alignment: Alignment.center,
                      fit: BoxFit.contain)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/facebook.png"),
                      alignment: Alignment.center,
                      fit: BoxFit.contain)),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.symmetric(horizontal: 7),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/instagram.png"),
                      alignment: Alignment.center,
                      fit: BoxFit.contain)),
            ),
          )
        ],
      ),
    );
  }
}
