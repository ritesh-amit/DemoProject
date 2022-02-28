import 'package:demo/homePage.dart';
import 'package:demo/profilePage.dart';
import 'package:demo/settings.dart';
import 'package:demo/utils/sizeConfig.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  final int index;

  const HomeMain({Key? key, this.index = 0}) : super(key: key);
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int _index = 0;
  List<NavModel> _menu = [
    NavModel(icon: Icon(Icons.home)),
    NavModel(icon: Icon(Icons.person)),
    NavModel(icon: Icon(Icons.settings)),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var h = SizeConfig.screenHeight / 812;
    var b = SizeConfig.screenWidth / 375;
    List<Widget> _screens = [
      HomePage(),
      ProfilePage(),
      Settings(),
    ];

    return Scaffold(
      bottomNavigationBar: Container(
        height: h * 55,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          selectedIconTheme: IconThemeData(size: b * 30),
          unselectedIconTheme: IconThemeData(size: b * 24),
          currentIndex: _index,
          items: _menu.map((e) {
            return BottomNavigationBarItem(
              icon: e.icon,
              label: '',
            );
          }).toList(),
          onTap: (menuIndex) {
            setState(() {
              _index = menuIndex;
            });
          },
        ),
      ),
      body: _screens[_index],
    );
  }
}

class NavModel {
  Icon icon;
  NavModel({required this.icon});
}
