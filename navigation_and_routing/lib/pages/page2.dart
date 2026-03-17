import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(title: Text('Page2'), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {Navigator.pop(context)},
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
