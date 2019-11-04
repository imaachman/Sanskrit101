import 'package:flutter/material.dart';

int index1 = 0;
int index2 = 0;
int check = 0;
int colorIndex = 0;

final colorList = [Colors.lightBlue, Colors.green, Colors.red];

final translationQuestion = [
  "qwe",
  "rty",
  "uio"
];

final answer = [
  ["asd","zxc","vbn"],
  ["fgh","qaz","wsx"],
  ["jkl","edc","rfv"]
];

class Translation extends StatefulWidget {
  @override
  _TranslationState createState() => _TranslationState();
}

class _TranslationState extends State<Translation> {

  final textController = TextEditingController();

  @override
  void dispose(){
    textController.dispose();
    super.dispose();
  }
  
  /*Widget translationPage(){
    Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                  child: Text("Translate this sentence", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Text(translationQuestion[index1], style: TextStyle(fontSize: 20.0)),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.0,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: null,
                        controller: textController,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: colorList[colorIndex],
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(
                        width: 5.0,
                        color: Colors.blueGrey[100]
                      )
                    ),
                    child: RawMaterialButton(
                      child: Center(
                        child: Text("check", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    onPressed: (){
                      for(String i in answer[index1]){
                        if(i==textController.text){
                          check++;
                        }
                      }
                      if(check>0){setState(() {
                       colorIndex=1; 
                      });}
                      else{setState(() {
                       colorIndex=2; 
                      });}

                      setState(() {
                       check=0; 
                      });
                    }
                    )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 10.0),
                  child: Container(
                    height: 50.0,
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
                        child: Text("next", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    onPressed: (){
                      Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                      setState(() {
                       colorIndex=0; 
                      });
                    }
                    )
                  ),
                )
              ],
            )
          ],
        ),
      );
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.amber,
        title: Text("Sentences"),
      ),

      body: Container(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                  child: Text("Translate this sentence", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                  child: Text(translationQuestion[index1], style: TextStyle(fontSize: 20.0)),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 2.0,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(15.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        decoration: null,
                        controller: textController,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: colorList[colorIndex],
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(
                        width: 5.0,
                        color: Colors.blueGrey[100]
                      )
                    ),
                    child: RawMaterialButton(
                      child: Center(
                        child: Text("check", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    onPressed: (){
                      for(String i in answer[index1]){
                        if(i==textController.text){
                          check++;
                        }
                      }
                      if(check>0){setState(() {
                       colorIndex=1; 
                      });}
                      else{setState(() {
                       colorIndex=2; 
                      });}

                      setState(() {
                       check=0; 
                      });
                    }
                    )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 10.0),
                  child: Container(
                    height: 50.0,
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
                        child: Text("next", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      ),
                    onPressed: (){
                      Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
                      setState(() {
                       colorIndex=0; 
                      });
                    }
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

