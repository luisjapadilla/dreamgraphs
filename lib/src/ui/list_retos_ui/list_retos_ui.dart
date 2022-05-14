import 'package:dreamgraphs/src/ui/home_ui/home_ui.dart';
import 'package:dreamgraphs/src/ui/list_retos_ui/competidos_ui.dart';
import 'package:dreamgraphs/src/ui/list_retos_ui/retos_estandar_ui.dart';
import 'package:flutter/material.dart';

class ListRetos extends StatefulWidget {
  HomeUIState homeUIState;

  ListRetos(this.homeUIState);

  @override
  _ListRetosState createState() => _ListRetosState();
}

class _ListRetosState extends State<ListRetos>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: IconButton(
              icon: Icon(
                widget.homeUIState.isCollapsed ? Icons.menu : Icons.close,
                color: Colors.white,
              ),
              onPressed: () {
                setState(() {
                  widget.homeUIState.setState(() {
                    widget.homeUIState.isCollapsed =
                        !widget.homeUIState.isCollapsed;
                  });
                });
              }),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                controller: _tabController,
                tabs: [
                  Tab(
                    text: "Restos Estandar",
                  ),
                  Tab(
                    text: "Competidos",
                  )
                ]),
          ),
        ),
        body: TabBarView(controller: _tabController, children: [
          RestosEstandarUI(),
          CompetidosUI(),
        ]));
  }
}
