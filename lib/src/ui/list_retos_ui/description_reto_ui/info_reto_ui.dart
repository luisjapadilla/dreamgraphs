import 'package:dreamgraphs/src/ui/list_retos_ui/description_reto_ui/aceptar_reto_ui.dart';
import 'package:flutter/material.dart';
import 'package:dreamgraphs/src/ui/custom_widget/form_ui.dart';

class InfoRetoUI extends StatefulWidget {
  String imagen;
  String content;
  String nombreEmpresa;
  String costo;
  String dias;
  InfoRetoUI({required this.imagen, required this.content, required this.nombreEmpresa, required this.costo, required this.dias});

  @override
  _InfoRetoUIState createState() => _InfoRetoUIState();
}

class _InfoRetoUIState extends State<InfoRetoUI> with FormUi{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.zero,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("${widget.imagen}")
                      )
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                  ),
                )
              ],
            ),
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3)),
      body: ListView(
        padding: EdgeInsets.only(bottom: 20),
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            title: Text("Toma un vaso de agua al dia", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 24
            ),),
            subtitle: Padding(
              padding: const EdgeInsets.only(top:5.0),
              child: Text("Autor: Nombre de la Empresa", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.normal,
              fontSize: 16
              )),
            ),
          ),
          Container(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.monetization_on, color: Colors.amber,),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text("30", style: TextStyle(
                      fontWeight: FontWeight.normal
                  ),),
                ),
                SizedBox(width: 10,),
                Icon(Icons.access_time, color: Colors.lightBlue,),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text("15D", style: TextStyle(
                      fontWeight: FontWeight.normal
                  ),),
                )
              ],
            ),
          ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
          child: _expandWidget(widget.content),
        ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: buttonGeneric(context, "Retarse", (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AceptarRetoUI(imagen: widget.imagen)),
              );
            }, MediaQuery.of(context).size.width-40),
          )
        ],
      ),
    );
  }
  Widget _expandWidget(String content){
    return ExpansionTile(
      initiallyExpanded: true,
      backgroundColor: Colors.transparent,
      title: Container(
          child: Text("Descripción"),
      ),
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text(content, textAlign: TextAlign.left,),
        ),
      ],
    );
  }
}
