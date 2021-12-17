import 'package:countdowner/references.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(References.appName)),
    );
  }
}
