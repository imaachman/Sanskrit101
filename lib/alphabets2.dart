/*import 'package:flutter/material.dart';
import 'alphabetsPage.dart';

class Alphabets2A extends StatefulWidget {
  @override
  _Alphabets2AState createState() => _Alphabets2AState();
}

class _Alphabets2AState extends State<Alphabets2A> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=1;
     option2=2;
     option3=2;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ए","e","i","a","ī",_changeColor,"/alphabets2B",context),
    );
  }
}

class Alphabets2B extends StatefulWidget {
  @override
  _Alphabets2BState createState() => _Alphabets2BState();
}

class _Alphabets2BState extends State<Alphabets2B> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=2;
     option2=2;
     option3=2;
     option4=1; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ऐ", "ā", "ē", "i", "ai",_changeColor,"/alphabets2C",context),
    );
  }
}

class Alphabets2C extends StatefulWidget {
  @override
  _Alphabets2CState createState() => _Alphabets2CState();
}

class _Alphabets2CState extends State<Alphabets2C> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=2;
     option2=1;
     option3=2;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ओ", "e", "o", "ī", "ō",_changeColor,"/alphabets2D",context),
    );
  }
}

class Alphabets2D extends StatefulWidget {
  @override
  _Alphabets2DState createState() => _Alphabets2DState();
}

class _Alphabets2DState extends State<Alphabets2D> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=2;
     option2=2;
     option3=1;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("औ", "ō", "ĕ", "au", "a",_changeColor,"/alphabets2E",context),
    );
  }
}

class Alphabets2E extends StatefulWidget {
  @override
  _Alphabets2EState createState() => _Alphabets2EState();
}

class _Alphabets2EState extends State<Alphabets2E> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=1;
     option2=2;
     option3=2;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ऋ", "r̥", "ē", "ū", "r",_changeColor,"/alphabets2F",context),
    );
  }
}

class Alphabets2F extends StatefulWidget {
  @override
  _Alphabets2FState createState() => _Alphabets2FState();
}

class _Alphabets2FState extends State<Alphabets2F> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=2;
     option2=2;
     option3=1;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("अं", "aṃ", "a", "an̊", "ā",_changeColor,"/alphabets2G",context),
    );
  }
}

class Alphabets2G extends StatefulWidget {
  @override
  _Alphabets2GState createState() => _Alphabets2GState();
}

class _Alphabets2GState extends State<Alphabets2G> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0;
     option4=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=1;
     option2=2;
     option3=2;
     option4=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 2"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("अः", "ah̥", "a", "u", "am",_changeColor,"/home",context),
    );
  }
}*/