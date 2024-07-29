import 'package:cars_app/screens/homepage_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_icons/flutter_svg_icons.dart';

class CustomFloatingNavBar extends StatefulWidget {
  const CustomFloatingNavBar({Key? key}) : super(key: key);
  static const String id = 'floating_navbar';

  @override
  State<CustomFloatingNavBar> createState() => _CustomFloatingNavBarState();
}

class _CustomFloatingNavBarState extends State<CustomFloatingNavBar> {
  int _selectedIndex = 0;

  Widget getScreen(int index) {
    switch (index) {
      case 0:
        return HomePage();

      default:
        return HomePage();
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: getScreen(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 8,
        unselectedFontSize: 8,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgIcon(icon: SvgIconData('assets/Explorer.svg')),
            label: 'Explorer',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(icon: SvgIconData('assets/Favorites.svg')),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(icon: SvgIconData('assets/buttom_trips.svg')),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(icon: SvgIconData('assets/buttom_inbox.svg')),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: SvgIcon(icon: SvgIconData('assets/buttom_profile.svg')),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
