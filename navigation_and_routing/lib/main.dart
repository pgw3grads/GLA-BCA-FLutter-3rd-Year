import 'package:flutter/material.dart';
import 'package:navigation_and_routing/pages/page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Navigation and Routing', home: Page1());
  }
}
