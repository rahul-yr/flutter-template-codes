import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData Light_Theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blueAccent,
    accentColor: Colors.blue,
    primaryIconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.red),
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 38.0, color: Colors.purple),
      headline6: TextStyle(fontSize: 36.0, color: Colors.purple),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  );
  static final ThemeData Dark_Theme = ThemeData(
    scaffoldBackgroundColor: Colors.blue[900],
    primaryColor: Colors.blue[800],
    accentColor: Colors.black26,
    primaryIconTheme: IconThemeData(color: Colors.white),
    accentIconTheme: IconThemeData(color: Colors.red),
    fontFamily: 'Roboto',
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 38.0, color: Colors.purple),
      headline6: TextStyle(fontSize: 36.0, color: Colors.purple),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  );
}