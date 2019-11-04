import 'package:flutter/material.dart';

int attempt = 0;
bool correct = false;
int wordIndex = 0;
final motivation = [
  "",
  "You're doing great!",
  "You are AWESOME!",
  "You nailed it!",
  "Just keep going!"
];


class Vocabulary extends StatefulWidget {
  @override
  _VocabularyState createState() => _VocabularyState();
}

class _VocabularyState extends State<Vocabulary> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  @override
  void initState(){
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

    Widget vocabularyPage(String word, String image1, String smallBox1, String image2, String smallBox2, String image3, String smallBox3, String image4, String smallBox4, int answer){    
   
      return Stack(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Which of these is a "+word, style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
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
                                child: Image.asset("assets/images/"+image1, fit: BoxFit.contain,),
                                onPressed: (){setState((){attempt=1;});}
                              ),
                            ),
                            Text(smallBox1, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: <Widget>[
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
                                child: Image.asset("assets/images/"+image2, fit: BoxFit.contain,),
                                onPressed: (){setState((){attempt=2;});}
                              ),
                            ),
                            Text(smallBox2, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: Column(
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
                                child: Image.asset("assets/images/"+image3, fit: BoxFit.contain,),
                                onPressed: (){setState((){attempt=3;});}
                              ),
                            ),
                            Text(smallBox3, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),

                    Container(
                      child: Column(
                        children: <Widget>[
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
                                child: Image.asset("assets/images/"+image4, fit: BoxFit.contain,),
                                onPressed: (){setState((){attempt=4;});}
                              ),
                            ),
                            Text(smallBox4, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ],
                ),

                Container(
                  height: 50.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      width: 5.0,
                      color: Colors.blueGrey[100]
                    )
                  ),
                  child: RawMaterialButton(
                  child: Center(
                    child: Text("check", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
                  ),
                  onPressed: (){
                       if(attempt==answer){setState(() {correct=true;});}
                       else{setState(() {correct=false;});}   
                       {_controller.forward();}
                       {reverseAnimation();}             
                  },
                )
                )
              ],
            ),
          ),

          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child){
              return Transform(
                transform: Matrix4.translationValues(0.0, _animation.value * height, 0.0),
                child: Container(
                  height: height / 4,
                  color: correct ? Colors.green: Colors.red,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                          child: Text(attempt == answer ? "Correct!" : "Incorrect", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                          child: Text(attempt==answer ? motivation[answer] : ("Correct answer: option" + answer.toString()), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
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
                              child: Text("next", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
                            ),
                            onPressed: (){
                              {_controller.reset();}
                              

                              {attempt=0;}
                              {forwardAnimation();}
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
          )
        ],
      );
  }

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Alphabets 1"),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); attempt=0;},)],
      ),

      body: vocabularyPage("boy", "boy.png", "balakah", "orange.png", "naranga", "girl.png", "baalaa", "father.png", "pitri", 1),
    );
  }
}