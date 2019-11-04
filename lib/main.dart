import 'package:flutter/material.dart';
import 'package:sanskrit101/alphabets.dart';
import 'package:sanskrit101/homePage.dart';
import 'package:sanskrit101/sentences.dart';
import 'package:sanskrit101/splashScreen.dart';
import 'package:sanskrit101/translation.dart';
/*import 'package:sanskrit101/alphabets1.dart';
import 'package:sanskrit101/alphabets2.dart';
import 'package:sanskrit101/alphabets3.dart';
import 'package:sanskrit101/alphabets4.dart';
import 'package:sanskrit101/alphabets5.dart';
import 'package:sanskrit101/alphabets6.dart';
import 'package:sanskrit101/alphabets7.dart';
import 'package:sanskrit101/alphabets8.dart';
import 'package:sanskrit101/sentences1.dart';*/
import 'package:sanskrit101/vocabulary.dart';

void main() => runApp(Sanskrit101());

class Sanskrit101 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      title: "Sanskrit 101",
      theme: ThemeData(fontFamily: 'Oswald'),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomePage(),
        '/alphabets': (BuildContext context) => new Alphabets(),
        '/sentences': (BuildContext context) => new Sentences(),
        '/translation': (BuildContext context) => new Translation(),
        /*'/alphabets1B': (BuildContext context) => new Alphabets1B(),
        '/alphabets1C': (BuildContext context) => new Alphabets1C(),
        '/alphabets1D': (BuildContext context) => new Alphabets1D(),
        '/alphabets1E': (BuildContext context) => new Alphabets1E(),
        '/alphabets1F': (BuildContext context) => new Alphabets1F(),
        '/alphabets2A': (BuildContext context) => new Alphabets2A(),
        '/alphabets2B': (BuildContext context) => new Alphabets2B(),
        '/alphabets2C': (BuildContext context) => new Alphabets2C(),
        '/alphabets2D': (BuildContext context) => new Alphabets2D(),
        '/alphabets2E': (BuildContext context) => new Alphabets2E(),
        '/alphabets2F': (BuildContext context) => new Alphabets2F(),
        '/alphabets2G': (BuildContext context) => new Alphabets2G(),
        '/alphabets3A': (BuildContext context) => new Alphabets3A(),
        '/alphabets3B': (BuildContext context) => new Alphabets3B(),
        '/alphabets3C': (BuildContext context) => new Alphabets3C(),
        '/alphabets3D': (BuildContext context) => new Alphabets3D(),
        '/alphabets3E': (BuildContext context) => new Alphabets3E(),
        '/alphabets4A': (BuildContext context) => new Alphabets4A(),
        '/alphabets4B': (BuildContext context) => new Alphabets4B(),
        '/alphabets4C': (BuildContext context) => new Alphabets4C(),
        '/alphabets4D': (BuildContext context) => new Alphabets4D(),
        '/alphabets4E': (BuildContext context) => new Alphabets4E(),
        '/alphabets5A': (BuildContext context) => new Alphabets5A(),
        '/alphabets5B': (BuildContext context) => new Alphabets5B(),
        '/alphabets5C': (BuildContext context) => new Alphabets5C(),
        '/alphabets5D': (BuildContext context) => new Alphabets5D(),
        '/alphabets5E': (BuildContext context) => new Alphabets5E(),
        '/alphabets6A': (BuildContext context) => new Alphabets6A(),
        '/alphabets6B': (BuildContext context) => new Alphabets6B(),
        '/alphabets6C': (BuildContext context) => new Alphabets6C(),
        '/alphabets6D': (BuildContext context) => new Alphabets6D(),
        '/alphabets6E': (BuildContext context) => new Alphabets6E(),
        '/alphabets7A': (BuildContext context) => new Alphabets7A(),
        '/alphabets7B': (BuildContext context) => new Alphabets7B(),
        '/alphabets7C': (BuildContext context) => new Alphabets7C(),
        '/alphabets7D': (BuildContext context) => new Alphabets7D(),
        '/alphabets7E': (BuildContext context) => new Alphabets7E(),
        '/alphabets8A': (BuildContext context) => new Alphabets8A(),
        '/alphabets8B': (BuildContext context) => new Alphabets8B(),
        '/alphabets8C': (BuildContext context) => new Alphabets8C(),
        '/alphabets8D': (BuildContext context) => new Alphabets8D(),
        '/alphabets8E': (BuildContext context) => new Alphabets8E(),
        '/alphabets8F': (BuildContext context) => new Alphabets8F(),
        '/alphabets8G': (BuildContext context) => new Alphabets8G(),
        '/alphabets8H': (BuildContext context) => new Alphabets8H(),
        '/sentences1A': (BuildContext context) => new Sentences1A(),*/
        '/vocabulary1': (BuildContext context) => new Vocabulary(),

        /*'/alphabets3': (BuildContext context) => new Alphabets3(),
        '/alphabets4': (BuildContext context) => new Alphabets4(),
        '/alphabets5': (BuildContext context) => new Alphabets5(),
        '/alphabets6': (BuildContext context) => new Alphabets6(),
        '/sentences1': (BuildContext context) => new Sentences1(),
        '/sentences2': (BuildContext context) => new Sentences2(),
        '/sentences3': (BuildContext context) => new Sentences3(),
        '/sentences4': (BuildContext context) => new Sentences4(),
        '/sentences5': (BuildContext context) => new Sentences5(),
        '/sentences6': (BuildContext context) => new Sentences6(),
        '/sentences7': (BuildContext context) => new Sentences7(),
        '/sentences8': (BuildContext context) => new Sentences8(),*/
      },
    );
  }
}