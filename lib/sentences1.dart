import 'package:flutter/material.dart';
import 'package:sanskrit101/sentencesPage.dart';

class Sentences1A extends StatefulWidget {
  @override
  _Sentences1AState createState() => _Sentences1AState();
}

class _Sentences1AState extends State<Sentences1A> {

  void _changeColorBlue(){
    setState(() {
     option1=0;
     option2=0;
     option3=0; 
    });
  }

  void _changeColor(){
    setState(() {
     option1=1;
     option2=2;
     option3=2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Sentences 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); _changeColorBlue();},)],
      ),

      body: sentencesPage("","","","",_changeColor,"",context)
    );
  }
}