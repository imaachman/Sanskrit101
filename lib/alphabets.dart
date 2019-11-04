import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

int attempt = 0;
bool correct = false;
int alphabetsIndex = 0;
String alphabetTitle;
final motivation = [
  "",
  "You're doing great!",
  "You are AWESOME!",
  "You nailed it!",
  "Just keep going!"
];
AudioCache _player = AudioCache(prefix: 'sounds/');

class Alphabets extends StatefulWidget {
  @override
  _AlphabetsState createState() => _AlphabetsState();
}

class _AlphabetsState extends State<Alphabets> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation  _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 1.0, end: 0.635).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
   }

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  var _side = 175.0;
  var _color = Colors.transparent;
  var _borderWidth = 10.0;
  var _opacity = 1.0;

  void forwardAnimation(){
    setState(() {
    _side = 175.0;
    _color = Colors.transparent;
    _borderWidth = 10.0;
    _opacity = 1.0;
    });
  }

  void reverseAnimation(){
    setState(() {
    _side = 0.0;
    _color = Colors.black;
    _borderWidth = 1.0;
    _opacity = 0.0; 
    });
  }


  @override
  Widget build(BuildContext context) {

  final height = MediaQuery.of(context).size.height;

  Widget alphabetsPage(String bigBox, String smallBox1, String smallBox2, String smallBox3, String smallBox4, int answer, String file){    
   
   return Stack(
        children: <Widget> [
          Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: GestureDetector(
                    onTap: (){_player.play(file);},
                    child: AnimatedContainer(
                    duration: Duration(milliseconds: 400),
                    height: _side,
                    width: _side,
                    decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35.0),
          color: _color,
          border: Border.all(
            width: _borderWidth,
            color: Colors.black
          )
                    ),
                    child: Center(
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: _opacity,
            child: Text(bigBox, style: TextStyle(fontSize: 108.0, color: Colors.black, fontFamily: 'Laila',)))
                    )
                ),
                  )
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: attempt==1 ? 150.0 : 135.0,
            width: attempt==1 ? 150.0 : 135.0,
            decoration: BoxDecoration(
              color: attempt==1 ? Colors.yellow : Colors.transparent,
              borderRadius: BorderRadius.circular(35.0),
              border: Border.all(
                width: 10.0,
                color: attempt==1 ? Colors.black : Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
                  child: Text(smallBox1, style: TextStyle(fontSize: 40.0, color: Colors.black, fontFamily: 'Oswald')),
                onPressed: (){setState(() {attempt=1;});}
              ),
            ),

          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: attempt==2 ? 150.0 : 135.0,
            width: attempt==2 ? 150.0 : 135.0,
            decoration: BoxDecoration(
              color: attempt==2 ? Colors.yellow : Colors.transparent,
              borderRadius: BorderRadius.circular(35.0),
              border: Border.all(
                width: 10.0,
                color: attempt==2 ? Colors.black : Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
                  child: Text(smallBox2, style: TextStyle(fontSize: 40.0, color: Colors.black, fontFamily: 'Oswald')),
                onPressed: (){setState(() {attempt=2;});}
              ),
            ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
           AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: attempt==3 ? 150.0 : 135.0,
            width: attempt==3 ? 150.0 : 135.0,
            decoration: BoxDecoration(
              color: attempt==3 ? Colors.yellow : Colors.transparent,
              borderRadius: BorderRadius.circular(35.0),
              border: Border.all(
                width: 10.0,
                color: attempt==3 ? Colors.black : Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
                  child: Text(smallBox3, style: TextStyle(fontSize: 40.0, color: Colors.black, fontFamily: 'Oswald')),
                onPressed: (){setState(() {attempt=3;});}
              ),
            ),

          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: attempt==4 ? 150.0 : 135.0,
            width: attempt==4 ? 150.0 : 135.0,
            decoration: BoxDecoration(
              color: attempt==4 ? Colors.yellow : Colors.transparent,
              borderRadius: BorderRadius.circular(35.0),
              border: Border.all(
                width: 10.0,
                color: attempt==4 ? Colors.black : Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
                  child: Text(smallBox4, style: TextStyle(fontSize: 40.0, color: Colors.black, fontFamily: 'Oswald')),
                onPressed: (){setState(() {attempt=4;});}
              ),
            ),
                  ],
                ),

                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
          color: Colors.blue[800],
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            width: 5.0,
            color: Colors.black
          )
                  ),
                  child: RawMaterialButton(
                  child: Center(
          child: Text("check", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Oswald'),),
                  ),
                  onPressed: (){
                   if(attempt==answer){setState(() {correct=true;});}
                   else{setState(() {correct=false;});}
                   {_controller.forward();}
                   {reverseAnimation();}
                  },
                )
                ),
              ],
            )
          ),

            AnimatedBuilder(
              animation: _controller,
              builder: (BuildContext context, Widget child){
               return Transform(
                  transform: Matrix4.translationValues(0.0, _animation.value * height, 0.0),
                  child: Container(
          height: height / 4,
          color: correct ? Colors.green : Colors.red,
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                  child: Text(attempt==answer ? "Correct!" : "Incorrect", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,0.0,0.0,10.0),
                  child: Text(attempt==answer ? motivation[answer] : ("Correct answer: option " + answer.toString()), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald'),),
                ),

                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      width: 5.0,
                      color: Colors.black
                    )
                  ),
                  child: RawMaterialButton(
                  child: Center(
                    child: Text("next", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Oswald'),),
                  ),
                  onPressed: (){
                    {_controller.reset();}
                    if(alphabetsIndex==5 || alphabetsIndex==12 || alphabetsIndex==17 || alphabetsIndex==22 || alphabetsIndex==27 || alphabetsIndex==32 || alphabetsIndex==37 || alphabetsIndex==45){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);}
                    if(alphabetsIndex!=5 && alphabetsIndex!=12 && alphabetsIndex!=17 && alphabetsIndex!=22 && alphabetsIndex!=27 && alphabetsIndex!=32 && alphabetsIndex!=37 && alphabetsIndex!=45){setState((){alphabetsIndex++;});}
                    {attempt=0;}
                    {forwardAnimation();}
                  },
                )
                ),
              ],
            ),
          ),
                  ),
                );
              }
            )
        ]
      );
    }

  final alphabetsList = [
    alphabetsPage("अ", "ī", "i", "a", "ā", 3,'a.wav'),
    alphabetsPage("आ", "ā", "ē", "i", "a",1,'ā.wav'),
    alphabetsPage("इ", "e", "o", "ī", "i",4,'i.wav'),
    alphabetsPage("ई", "ē", "ī", "ă", "a",2,'ī.wav'),
    alphabetsPage("उ", "u", "ē", "ū", "a",1,'u.wav'),
    alphabetsPage("ऊ", "o", "i", "u", "ū",4,'ū.wav'),
    alphabetsPage("ए","e","i","a","ī",1,'e.wav'),
    alphabetsPage("ऐ", "ā", "ē", "i", "ai",4,'ai.wav'),
    alphabetsPage("ओ", "e", "o", "ī", "ō",2,'o.wav'),
    alphabetsPage("औ", "ō", "ĕ", "au", "a",3,'au.wav'),
    alphabetsPage("ऋ", "r̥", "ē", "ū", "r",1,'ri.wav'),
    alphabetsPage("अं", "aṃ", "a", "an̊", "ā",3,'an.wav'),
    alphabetsPage("अः", "ah̥", "a", "u", "am",1,'ah.wav'),
    alphabetsPage("क","kha","ca","cha","ka",4,'ka.wav'),
    alphabetsPage("ख", "ka", "kha", "ca", "gha",2,'kha.wav'),
    alphabetsPage("ग", "ca", "na", "gha", "ga",4,'ga.wav'),
    alphabetsPage("घ", "gha", "na", "cha", "kha",1,'gha.wav'),
    alphabetsPage("ङ", "da", "na", "ṅa", "ka",3,'ang.wav'),
    alphabetsPage("च","cha","da","ca","ra",3,'ca.wav',),
    alphabetsPage("छ", "ca", "cha", "ka", "jha",2,'cha.wav'),
    alphabetsPage("ज", "ja", "cha", "jha", "va",1,'ja.wav'),
    alphabetsPage("झ", "i", "la", "ja", "jha",4,'jha.wav'),
    alphabetsPage("ञ", "la", "ja", "na", "ña",4,'yn.wav'),
    alphabetsPage("ट","t̥a","ta","da","pa",1,'ta.wav'),
    alphabetsPage("ठ", "ta", "tha", "t̥ha", "dha",3,'thha.wav'),
    alphabetsPage("ड", "sa", "i", "ka", "d̥a",4,'da.wav'),
    alphabetsPage("ढ", "d̥ha", "d̥a", "ta", "sa",1,'dhha.wav'),
    alphabetsPage("ण", "n̥a", "pa", "paa", "ra",1,'ña.wav'),
    alphabetsPage("त","tha","ta","la","na",2,'tah.wav'),
    alphabetsPage("थ", "pa", "ya", "dha", "tha",4,'tha.wav'),
    alphabetsPage("द", "d̥a", "da", "t̥ha", "i",2,'dah.wav'),
    alphabetsPage("ध", "la", "tha", "dha", "ma",3,'dha.wav'),
    alphabetsPage("न", "na", "ma", "sa", "ga",1,'na.wav'),
    alphabetsPage("प","pa","ka","pha","s̥a",1,'pa.wav'),
    alphabetsPage("फ", "ka", "pha", "ma", "pa",2,'pha.wav'),
    alphabetsPage("ब", "bha", "la", "s̥a", "ba",4,'ba.wav'),
    alphabetsPage("भ", "ma", "bha", "tha", "ba",2,'bha.wav'),
    alphabetsPage("म", "r̥", "bha", "ma", "sa",3,'ma.wav'),
    alphabetsPage("य","pa","tha","ya","ga",3,'ya.wav'),
    alphabetsPage("र", "na", "ja", "ra", "sa",3,'ra.wav'),
    alphabetsPage("ल", "ta", "ṭha", "la", "na",3,'la.wav'),
    alphabetsPage("व", "a", "va", "ba", "pa",2,'va.wav'),
    alphabetsPage("श", "śa", "t̥a", "sa", "pha",1,'sha.wav'),
    alphabetsPage("ष", "śa", "pa", "va", "s̥a",4,'shha.wav'),
    alphabetsPage("स", "śa", "sa", "ba", "dha",2,'sa.wav'),
    alphabetsPage("ह", "ah̥", "i", "ha", "jha",3,'ha.wav'),
  ];

  var alphabet = alphabetsList[alphabetsIndex];

    
       return Scaffold( 
        appBar: new AppBar(
          backgroundColor: Colors.blue[800],
          title: Text(alphabetTitle, style: TextStyle(fontFamily: 'Oswald'),),
          actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); attempt=0;},)],
        ),

        body: alphabet,
        );
  }
}