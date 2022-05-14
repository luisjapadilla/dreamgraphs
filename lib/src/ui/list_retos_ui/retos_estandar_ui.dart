import 'package:dreamgraphs/src/ui/list_retos_ui/description_reto_ui/info_reto_ui.dart';
import 'package:flutter/material.dart';
import 'package:dreamgraphs/src/ui/custom_widget/form_ui.dart';

class RestosEstandarUI extends StatefulWidget {
  @override
  _RestosEstandarUIState createState() => _RestosEstandarUIState();
}

class _RestosEstandarUIState extends State<RestosEstandarUI> with FormUi {
  String text = """
    El agua es el componente químico principal del cuerpo y
    representa el 60 por ciento del peso corporal. El cuerpo
    depende del agua para sobrevivir.
    Cada célula, tejido y órgano del cuerpo necesita agua para
    funcionar correctamente. Por ejemplo, el agua cumple las
    siguientes funciones:
    Elimina los desechos a través de la orina, la transpiración y
    las evacuaciones intestinales
    Mantiene una temperatura normal
    Lubrica y amortigua las articulaciones
    Protege los tejidos sensibles
    La falta de agua puede provocar deshidratación, que es una
    afección que ocurre cuando no tienes suficiente agua en el
    cuerpo como para llevar a cabo las funciones normales.
    Incluso una deshidratación leve puede quitarte la energía y
    hacer que te sientas cansado.
    """;

  late String _value;
  late String _valueD;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      inputSearch(text: "Buscar", controller: TextEditingController()),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: buttonGeneric(context, "Buscar", () {}, 80),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      _tipoReto(),
                      SizedBox(
                        width: 9,
                      ),
                      _dificultadReto()
                    ],
                  )
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50)),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: <Widget>[
            Hero(
              tag: "uno",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_uno.png", content: text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_uno.png'),
                ),
              ),
            ),
            Hero(
              tag: "tres",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: 'assets/images/reto_tres.png', content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_tres.png'),
                ),
              ),
            ),
            Hero(
              tag: "dos",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_dos.png", content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_dos.png'),
                ),
              ),
            ),
            Hero(

              tag: "uno1",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_uno.png", content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_uno.png'),
                ),
              ),
            ),
            Hero(
              tag: "tres2",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: 'assets/images/reto_tres.png', content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_tres.png'),
                ),
              ),
            ),
            Hero(
              tag: "dos3",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_dos.png", content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_dos.png'),
                ),
              ),
            ),
            Hero(
              tag: "uno4",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_uno.png", dias: '', costo: '', nombreEmpresa: '', content: '',))),
                  child: _cardRetos('assets/images/reto_uno.png'),
                ),
              ),
            ),
            Hero(
              tag: "tres5",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: 'assets/images/reto_tres.png', content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_tres.png'),
                ),
              ),
            ),
            Hero(
              tag: "dos6",
              child: Material(
                child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          InfoRetoUI(imagen: "assets/images/reto_dos.png", content:text, dias: '', costo: '', nombreEmpresa: '',))),
                  child: _cardRetos('assets/images/reto_dos.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _cardRetos(String img) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        elevation: 6,
        child: Stack(
          children: <Widget>[
            Container(
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.transparent,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        img,
                      ))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 40,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.8),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Text(
                        "Toma un vaso de agua cada dia",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              Icons.access_time,
                              size: 15,
                              color: Colors.black,
                            ),
                            SizedBox(width: 5,),
                            Text("15 D",style: TextStyle(
                                color: Colors.black
                            ))
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DropdownButton _tipoReto() => DropdownButton<String>(
    items: [
      DropdownMenuItem<String>(
        value: "1",
        child: Text(
          "Gratis",
        ),
      ),
      DropdownMenuItem<String>(
        value: "2",
        child: Text(
          "Premium",
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        this._value = value!;
      });
    },
    value: this._value,
    hint: Text(
      "Tipo de Retos",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );

  DropdownButton _dificultadReto() => DropdownButton<String>(
    items: [
      DropdownMenuItem<String>(
        value: "1",
        child: Text(
          "Media",
        ),
      ),
      DropdownMenuItem<String>(
        value: "2",
        child: Text(
          "Alta",
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        this._valueD = value!;
      });
    },
    value: this._valueD,
    hint: Text(
      "Dificultad",
      style: TextStyle(
        color: Colors.grey,
      ),
    ),
  );

}

