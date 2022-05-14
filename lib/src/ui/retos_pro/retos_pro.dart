import 'package:dreamgraphs/src/ui/home_ui/home_ui.dart';
import 'package:flutter/material.dart';

class RetosPro extends StatefulWidget {

  HomeUIState homeUIState;

  RetosPro(this.homeUIState);

  @override
  _RetosProState createState() => _RetosProState();
}

class _RetosProState extends State<RetosPro> {
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
                  ],
                ),
              ),
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
          preferredSize: Size(0, 50),
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.only(top: 29, left: 10, right: 10),
            children: <Widget>[
            ],
          ),
        )
    );
  }
}