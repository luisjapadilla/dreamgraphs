import 'package:flutter/material.dart';
import 'package:dreamgraphs/src/ui/custom_widget/form_ui.dart';

class AceptarRetoUI extends StatefulWidget {

  late String imagen;
  late String content;
  late String nombreEmpresa;
  late String costo;
  late String dias;

  AceptarRetoUI({required this.imagen});

  @override
  _AceptarRetoUIState createState() => _AceptarRetoUIState();
}

class _AceptarRetoUIState extends State<AceptarRetoUI> with FormUi{
  bool change = false;
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
          _infoFecha("Fecha de Inicio", "3/8/2019"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(height: 2,),
          ),
          _infoFecha("Recordatorio", "3:35 PM"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(height: 2,),
          ),
          _infoFecha("Notificacion", "Vibrar"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Divider(height: 2,),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Acepto las Condiciones y terminos de servicio."),
                Checkbox(
                    value: this.change,
                    onChanged: (change){
                      setState(() {
                        this.change = change!;
                      });
                    }
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: buttonGeneric(context, "Aceptar Reto", (){}, MediaQuery.of(context).size.width-40),
          )
        ],
      ),
    );
  }
  Widget _infoFecha(String nombre, String fecha){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(nombre),
          Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                child: Text(fecha),
              )
          ),
        ],
      ),
    );
  }
}
