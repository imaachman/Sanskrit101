/*import 'package:flutter/material.dart';
import 'alphabetsPage.dart';

class Alphabets1A extends StatefulWidget {
  @override
  _Alphabets1AState createState() => _Alphabets1AState();
}

class _Alphabets1AState extends State<Alphabets1A> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("अ","ī","i","a","ā",_changeColor,"/alphabets1B",context),
    );
  }
}

class Alphabets1B extends StatefulWidget {
  @override
  _Alphabets1BState createState() => _Alphabets1BState();
}

class _Alphabets1BState extends State<Alphabets1B> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("आ", "ā", "ē", "i", "a",_changeColor,"/alphabets1C",context),
    );
  }
}

class Alphabets1C extends StatefulWidget {
  @override
  _Alphabets1CState createState() => _Alphabets1CState();
}

class _Alphabets1CState extends State<Alphabets1C> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("इ", "e", "o", "ī", "i",_changeColor,"/alphabets1D",context),
    );
  }
}

class Alphabets1D extends StatefulWidget {
  @override
  _Alphabets1DState createState() => _Alphabets1DState();
}

class _Alphabets1DState extends State<Alphabets1D> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ई", "ē", "ī", "ă", "a",_changeColor,"/alphabets1E",context),
    );
  }
}

class Alphabets1E extends StatefulWidget {
  @override
  _Alphabets1EState createState() => _Alphabets1EState();
}

class _Alphabets1EState extends State<Alphabets1E> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("उ", "u", "ē", "ū", "a",_changeColor,"/alphabets1F",context),
    );
  }
}

class Alphabets1F extends StatefulWidget {
  @override
  _Alphabets1FState createState() => _Alphabets1FState();
}

class _Alphabets1FState extends State<Alphabets1F> {

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
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ऊ", "o", "i", "u", "ū",_changeColor,"/home",context),
    );
  }
}*/