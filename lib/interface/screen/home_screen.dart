import 'package:countdowner/interface/pages/countdown_list_page.dart';
import 'package:countdowner/references.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = "/homeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CountdownListPage(),
    );
  }
}
