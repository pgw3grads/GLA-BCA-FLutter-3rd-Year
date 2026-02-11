import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('i am poor', style: TextStyle(color: Colors.blue)),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9S86BPoItXWcEQ_F24PRHu4N-AdgFzV69aA&s',
            ),
          ),
        ),
      ),
    ),
  );
}
