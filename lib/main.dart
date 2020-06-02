import 'package:adhan_times/screens/addCity_screen.dart';
import 'package:adhan_times/screens/adhan.dart';
import 'package:flutter/material.dart';

void main() => runApp(Adhan());

class Adhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (context) => CityPage(),
        '/times': (context) => TimesPage(),
      },
    );
  }
}
