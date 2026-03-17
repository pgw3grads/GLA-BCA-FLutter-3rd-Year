import 'package:flutter/material.dart';
import 'package:navigation_and_routing/pages/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(title: Text('Page1'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page2()),
            ),
          },
          child: Text('Go to Page2'),
        ),
      ),
    );
  }
}
