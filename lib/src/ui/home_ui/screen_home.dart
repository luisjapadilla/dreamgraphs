import 'package:dreamgraphs/src/ui/home_ui/home_ui.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {

  HomeUIState homeUIState;

  ScreenHome(this.homeUIState);

  @override
  _ScreenHomeState createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool isCollapsed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Card(
                            elevation: 8,
                            shape: CircleBorder(
                                side: BorderSide(color: Colors.transparent)),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage(
                                'assets/images/perfil_foto.png',
                              ),
                            ),
                          ),
                          Text(
                            "Alice Freeman",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "Fulltime explorer",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 185,
                left: MediaQuery.of(context).size.width / 5,
                right: MediaQuery.of(context).size.width / 5,
                child: Card(
                  elevation: 6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[Text("Retos"), Text("40")],
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: <Widget>[Text("Seguidores"), Text("133K")],
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[Text("Amigos"), Text("83")],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  right: 1,
                  bottom: 1,
                  child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: () {})),
              Positioned(
                  top: 20,
                  right: 1,
                  child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      onPressed: () {})),
              Positioned(
                  top: 20,
                  left: 1,
                  child: IconButton(
                      icon: Icon(
                        widget.homeUIState.isCollapsed ? Icons.menu : Icons.close,
                        color: Colors.white,
                      ),
                      onPressed: () {
                          setState(() {
                            widget.homeUIState.setState((){
                              widget.homeUIState.isCollapsed = !widget.homeUIState.isCollapsed;
                            });
                          });
                      })),
            ],
          ),
          preferredSize: Size(0, 190),
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 29, left: 10, right: 10),
            children: <Widget>[
              _cardRetos('assets/images/reto_uno.png'),
              _cardRetos('assets/images/reto_dos.png'),
              _cardRetos('assets/images/reto_tres.png')
            ],
          ),
        )
    );
  }

  Widget _cardRetos(String img) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 8,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.transparent,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          img,
                        ))),
              ),
              Positioned(
                  left: 3,
                  top: 3,
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.only(left: 2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: RadialGradient(colors: [
                          Colors.blue,
                          Colors.lightBlueAccent,
                        ])),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Center(
                        child: Text(
                          "79%",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                    Text("40"),
                    SizedBox(width: 4,),
                    InkWell(
                      onTap: (){},
                      child: Icon(Icons.mode_comment, color: Colors.blue),
                    ),
                    Text("5")
                  ],
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Toma un vaso de agua cada dia", textAlign: TextAlign.center,),
                      Text("15 Dias"),
                    ],
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.only(left: 2),
                  decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Center(child: Text("2d 5h")),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
