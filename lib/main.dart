import 'package:countdowner/interface/screen/home_screen.dart';
import 'package:countdowner/references.dart';
import 'package:flutter/material.dart';
import 'package:swatcher/swatcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: References.appName,
      theme: ThemeData(
        primarySwatch: Swatcher.createMaterialColor(Color(0xFFB6E2D3)),

      ),
      initialRoute: HomeScreen.route,
      routes: <String, Widget Function(BuildContext)>{
        HomeScreen.route: (BuildContext context) => HomeScreen(),
      },
    );
  }
}
