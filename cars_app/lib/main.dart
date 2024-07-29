import 'package:cars_app/screens/bottomBar_screen.dart';
import 'package:cars_app/screens/homepage_screen.dart';
import 'package:cars_app/screens/location_search.dart';
import 'package:cars_app/screens/select_date.dart';
import 'package:cars_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CarsApp());
}

class CarsApp extends StatefulWidget {
  const CarsApp({super.key});

  @override
  State<CarsApp> createState() => _CarsAppState();
}

class _CarsAppState extends State<CarsApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        CustomFloatingNavBar.id: (context) => CustomFloatingNavBar(),
        HomePage.id: (context) => HomePage(),
        SearchLocation.id: (context) => SearchLocation(),
        SelectDateandTime.id: (context) => SelectDateandTime()
      },
    );
  }
}
