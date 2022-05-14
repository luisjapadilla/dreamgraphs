import 'package:flutter/material.dart';

class MenuDrawerUI extends StatefulWidget {
  @override
  _MenuDrawerUIState createState() => _MenuDrawerUIState();
}

class _MenuDrawerUIState extends State<MenuDrawerUI> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double screenWidth = size.width;
    double screenHeight = size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          right: 5,
          top: 20
        ),
        child: Container(
          height: screenHeight,
          width: 0.5 * screenWidth,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 25,
                child: Container(
                     margin:  EdgeInsets.only(top: 28.0),
                    height: screenHeight-150,
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            width: 1,
                            color: Colors.grey.withOpacity(.5)
                        )
                      )
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 60,),
                  ListTile(
                    onTap: (){},
                    title: Text("Buscar \nDreamers",textAlign: TextAlign.center,),
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                            style: BorderStyle.solid,
                          ),
                          shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text("Retos \nCompetidos", textAlign: TextAlign.center,),
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text("Planes",textAlign: TextAlign.center,),
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text("Configuracion",textAlign: TextAlign.center,),
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: (screenHeight/2)-110,
                  ),
                  ListTile(
                    onTap: (){},
                    title: Text("Cerrar sesion",textAlign: TextAlign.center,),
                    leading: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                          style: BorderStyle.solid,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
