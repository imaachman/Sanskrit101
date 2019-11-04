import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  var _logoOpacity = 1.0;
  var _textOpacity = 0.0;

  void fade(){
    setState(() {
     _logoOpacity = 0.0;
     _textOpacity = 1.0; 
    });
  }

  @override
  void initState(){
    super.initState();
    Timer(Duration(milliseconds: 2500), () => fade());
    Timer(Duration(milliseconds: 4000), () => Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Stack(
        children: <Widget>[
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _textOpacity,
            child: Container(color: Colors.white),
          ),
          AnimatedOpacity(
              duration: Duration(milliseconds: 500),
              opacity: _logoOpacity,
              child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(height: 200.0, width: 200.0, child: FlareActor('assets/flare/S.flr', animation: 'SAnimation', fit: BoxFit.cover)),
                  SizedBox(height: 150.0, width: 150.0, child: FlareActor('assets/flare/101.flr', animation: '101Animation', fit: BoxFit.contain))
                ],
              ),
            ),
          ),

          AnimatedOpacity(
            duration: Duration(milliseconds: 1000),
            opacity: _textOpacity,
            child: Center(
              child: Text("नमस्कारम्", style: TextStyle(fontSize: 54.0, fontFamily: 'Ranga', color: Colors.black87)),
            ),
          )
        ],
      ),
    );
  }
}