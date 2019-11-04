/*import 'package:flutter/material.dart';
import 'alphabetsPage.dart';

class Alphabets8A extends StatefulWidget {
  @override
  _Alphabets8AState createState() => _Alphabets8AState();
}

class _Alphabets8AState extends State<Alphabets8A> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("य","pa","tha","ya","ga",_changeColor,"/alphabets8B",context),
    );
  }
}

class Alphabets8B extends StatefulWidget {
  @override
  _Alphabets8BState createState() => _Alphabets8BState();
}

class _Alphabets8BState extends State<Alphabets8B> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("र", "na", "ja", "ra", "sa",_changeColor,"/alphabets8C",context),
    );
  }
}

class Alphabets8C extends StatefulWidget {
  @override
  _Alphabets8CState createState() => _Alphabets8CState();
}

class _Alphabets8CState extends State<Alphabets8C> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ल", "ta", "ṭha", "la", "na",_changeColor,"/alphabets8D",context),
    );
  }
}

class Alphabets8D extends StatefulWidget {
  @override
  _Alphabets8DState createState() => _Alphabets8DState();
}

class _Alphabets8DState extends State<Alphabets8D> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("व", "a", "va", "ba", "pa",_changeColor,"/alphabets8E",context),
    );
  }
}

class Alphabets8E extends StatefulWidget {
  @override
  _Alphabets8EState createState() => _Alphabets8EState();
}

class _Alphabets8EState extends State<Alphabets8E> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("श", "śa", "t̥a", "sa", "pha",_changeColor,"/alphabets8F",context),
    );
  }
}

class Alphabets8F extends StatefulWidget {
  @override
  _Alphabets8FState createState() => _Alphabets8FState();
}

class _Alphabets8FState extends State<Alphabets8F> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ष", "śa", "pa", "va", "s̥a",_changeColor,"/alphabets8G",context),
    );
  }
}

class Alphabets8G extends StatefulWidget {
  @override
  _Alphabets8GState createState() => _Alphabets8GState();
}

class _Alphabets8GState extends State<Alphabets8G> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("स", "śa", "sa", "ba", "dha",_changeColor,"/alphabets8H",context),
    );
  }
}

class Alphabets8H extends StatefulWidget {
  @override
  _Alphabets8HState createState() => _Alphabets8HState();
}

class _Alphabets8HState extends State<Alphabets8H> {

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
        title: Text("Alphabets 8"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: alphabetsPage("ह", "ah̥", "i", "ha", "jha",_changeColor,"/home",context),
    );
  }
}*/


