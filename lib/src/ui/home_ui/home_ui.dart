import 'package:dreamgraphs/src/ui/home_ui/screen_home.dart';
import 'package:dreamgraphs/src/ui/list_retos_ui/list_retos_ui.dart';
import 'package:dreamgraphs/src/ui/menu_ui/menu_drawer_ui.dart';
import 'package:dreamgraphs/src/ui/muro_ui/MuroUI.dart';
import 'package:dreamgraphs/src/ui/retos_pro/retos_pro.dart';
import 'package:dreamgraphs/src/ui/social_ui/social_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  @override
  HomeUIState createState() => HomeUIState();
}

class HomeUIState extends State<HomeUI> {
  int _cIndex = 2;
  bool isCollapsed = true;
  late double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  late List<Widget> _screen;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screen.add(MuroUI(this));
    _screen.add(ListRetos(this));
    _screen.add(ScreenHome(this));
    _screen.add(SocialUI(this));
    _screen.add(RetosPro(this));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          MenuDrawerUI(),
          _contentHome(context),
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xFF08C1CE),
          currentIndex: _cIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fullscreen,
                    color: _cIndex == 0 ? Color(0xFF08C1CE) : Colors.grey),
                label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.border_all,
                  color: _cIndex == 1 ? Color(0xFF08C1CE) : Colors.grey),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.home,
                    color: _cIndex == 2 ? Color(0xFF08C1CE) : Colors.grey),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.message,
                    color: _cIndex == 3 ? Color(0xFF08C1CE) : Colors.grey),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: _cIndex == 4 ? Color(0xFF08C1CE) : Colors.grey),
                label: ''),
          ],
          onTap: (index) {
            _incrementTab(index);
          },
        )
    );
  }


  Widget _contentHome(context){
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.5 * screenWidth,
      child: _screen[_cIndex]
    );
  }

}
