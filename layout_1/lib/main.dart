import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          bottom: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Container(width: 100, color: Colors.red),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 100, height: 100, color: Colors.yellow),
                    Container(height: 100, width: 100, color: Colors.green),
                  ],
                ),
              ),

              Container(width: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    ),
  );
}
