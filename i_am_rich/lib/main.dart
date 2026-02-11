/*
Material App- is just a app that implements material design pattern. 
in material app we have a widget tree that starts with home.
- by default all text widget are aligned to top left corner
- to make the text in centre there is a centre widget for this
- we just need to wrap out our Text widget in this centre widget
- Center Widget has a child
- Each widget in flutter has its specific role
  - Text Widget is for displaying Text on screen
  - Center widget is for aligning the content inside it in centre
  - Scaffold-> What are scaffolds? visit this link-> https://api.flutter.dev/flutter/material/Scaffold-class.html
    - AppBar()-> https://api.flutter.dev/flutter/material/AppBar-class.html
    - Body()-> body is the primary content of the scaffold
    - Image()-> https://api.flutter.dev/flutter/widgets/Image-class.html
      - Image urls will be in single quotes ''
        - NetworkImage is a widget that helps us to get the images from the internt sources
        - How to get add image assests in the pubspec.yaml

# YAML => YAML ain't markup language, is a specific type language that both humans and machines can understand to how manage a flutter projects
  - YAML is indentation heavy
  - we add assests like external images and media in pubspec.yaml file

# how to add custom app icon? 
  1. create an icon from https://appicon.co
  2. the app launcher icon files start from mipmap in the android/app/src/main/res folder
  3. unzip the downloaded icon files and replace in the project folder
  4. the app icon file name should be ic_launcher.png for all files otherwise update in android manifest.xml

* Students challenge
?-> How to change the Scaffold background color, Find through documentation
?-> Centre the image in the app
*/
import 'package:flutter/material.dart';

// the main function is starting point for all our app
void main() {
  // our app with Center widget
  // runApp(MaterialApp(home: Center(child: Text('hello app'))));
  // now we'll implement it with a scaffold widget

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent, // scaffold background color property
        appBar: AppBar(
          title: Text('I Am Rich', style: TextStyle(color: Colors.red)),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/LOGO.png'), // adding an assest image
            // image: NetworkImage(
            //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiT8o2BrrUAZU-K8YMFJm_g8Pk9D9LfKfpLA&s',
            // ), // adding an network image
          ),
        ),
      ),
    ),
  );
}
