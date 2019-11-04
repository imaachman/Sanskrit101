import 'package:flutter/material.dart';
import 'package:sanskrit101/alphabets.dart';
import 'package:sanskrit101/sentences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  AnimationController _controller;
  Animation animation1, animation2, animation3, animation4;

  @override
  void initState(){
    super.initState();
    _controller =  AnimationController(vsync: this, duration: Duration(seconds: 2));
    
    animation1 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    animation2 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Interval(0.2, 1.0, curve: Curves.easeOut)));
    animation3 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Interval(0.4, 1.0, curve: Curves.easeOut)));
    animation4 = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(parent: _controller, curve: Interval(0.6, 1.0, curve: Curves.easeOut)));

    _controller.forward();
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

 Widget card(String heading, double fontSize, String route, int index, String data){
    return Container(
      width: 150.0,
      height: 150.0,
      child: InkWell(
              onTap: (){
                Navigator.of(context).pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
                {alphabetsIndex = index;}
                {alphabetTitle = data;}
                {sentenceIndex = index;}
                {sentenceTitle = data;}
              },
              child: Card(
                color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Text(heading, style: TextStyle(fontSize: fontSize, fontFamily: 'Laila', color: Colors.black)),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(data, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black54)),
              )
            ],
          ),
        ),
      ),
    );
  }
    

    final mainScreenIcons = <Widget>[
    card("अ", 90.0, '/alphabets', 0, "Alphabets 1"),
    card("ए", 90.0, '/alphabets', 6, "Alphabets 2"),
    card("क", 90.0, '/alphabets', 13, "Alphabets 3"),
    card("च", 90.0, '/alphabets', 18, "Alphabets 4"),
    card("ट", 90.0, '/alphabets', 23, "Alphabets 5"),
    card("त", 90.0, '/alphabets', 28, "Alphabets 6"),
    card("प", 90.0, '/alphabets', 33, "Alphabets 7"),
    card("य", 90.0, '/alphabets', 38, "Alphabets 8"),

    card("पुरुषः", 64.0, '/sentences', 0, "Pronouns"),
    card("कालः", 64.0, '/sentences', 12, "Tenses"),
    card("  लिङ्ग", 64.0,'/sentences', 24, "Genders"),
    card("वचनम्  ", 64.0, '/sentences', 31, "Plurals"),
    card(" विभक्तीः", 51.0, '/sentences', 31, "Prepositions"),
    card(" अव्यय", 60.0, '/sentences', 31, "Conjunctions"),
    
  ];

  final height = MediaQuery.of(context).size.height;

  Widget transform(double animation, int index){
    return Transform(
      transform: Matrix4.translationValues(0.0, animation*height, 0.0),
      child: mainScreenIcons[index],
    );
  }

    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child){
          return Scaffold(
        body: Container(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              transform(animation4.value, 0),
              transform(animation4.value, 1),
              transform(animation3.value, 2),
              transform(animation3.value, 3),
              transform(animation2.value, 4),
              transform(animation2.value, 5),
              transform(animation1.value, 6),
              transform(animation1.value, 7),
              mainScreenIcons[8],
              mainScreenIcons[9],
              mainScreenIcons[10],
              mainScreenIcons[11],
              mainScreenIcons[12],
              mainScreenIcons[13],
            ],
          )
        ),

        floatingActionButton: Container(
          height: 70.0,
          width: 70.0,
          child: FittedBox(
            child: FloatingActionButton(
          child: Icon(Icons.ac_unit, size: 44.0,),
          backgroundColor: Colors.blue[800],
          onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/vocabulary1', (Route<dynamic> route) => false);},
        ),
          ),
        )
      );
      }
    );
  }
}