import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[500],
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('images/pfp.jpg'),
                  ),
                ),
                Center(
                  child: Text(
                    'Pryanshu Gupta',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ),
                SizedBox(width: 10, height: 10),
                Center(
                  child: Text(
                    'TECHNICAL TRAINER @W3GRADS',
                    style: TextStyle(
                      color: Colors.teal.shade100,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Times New Roman',
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 10,
                    width: 150,
                    child: Divider(color: Colors.teal[100]),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  // padding: EdgeInsets.all(10), Cards don't have padding, containers have
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(Icons.add_call, color: Colors.teal),
                      title: Text(
                        '+91 8795667730',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 15,
                          fontFamily: '',
                        ),
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Icon(Icons.add_call, color: Colors.teal),
                    //     SizedBox(width: 10),
                    //     Text(
                    //       '+91 8795667730',
                    //       style: TextStyle(
                    //         color: Colors.teal,
                    //         fontSize: 15,
                    //         fontFamily: '',
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  // padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTile(
                      leading: Icon(Icons.email, color: Colors.teal),
                      title: Text(
                        'priyanshu@w3grads.com',
                        style: TextStyle(color: Colors.teal, fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/* here are my notes
Containers- are like div for more info go to flutter.dev
A container is a single child widget.
Row/Column/Stack are multi child widgets.
by default containers take all the space availabe on screen
SafeArea- is to avoid problems with notch and corners of the different phone screens
EdgeInsets is for adding desired margin to our app
margin is for main box or outside of the widget
padding is for child inside main boxs or inside of the widget

columns and rows are for vertical and horizontal alignment of widget
Column/Rows has children not child. and children is basically a list of widgets rather than a single widget
mainAxisAlignment: start, end, centre, space
verticalDirection: up, down
crossAxisAlignment: perpendicular to vertical axis. it sticks with the max width container to right
double.infinity
SizedBox(height:) can be used between containers to create intended space between them
Flutter Layout CheatSheet-> https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

Head to fonts.google.com for free fonts

Visit https://materialpalette.com for awesome free icons and colors guide

we can use ListTitle insed cards for more custiomizaiton

Divider() widget add a line to screen
*/
