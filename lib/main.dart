import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
  },
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.red,
    accentColor: Colors.white,
    brightness: Brightness.dark,
  ),
));
