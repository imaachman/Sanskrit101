import 'package:flutter/material.dart';

int option1 = 0;
int option2 = 0;
int option3 = 0;

final colorList = [Colors.lightBlue, Colors.green, Colors.red];

Widget sentencesPage(String question, String smallBox1, String smallBox2, String smallBox3, Function changeColor, String route, BuildContext context){
  return Container(
    child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 100.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Select the correct translation", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(question, style: TextStyle(fontSize: 20.0,), maxLines: 4,),
                )
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
            height: 250.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: colorList[option1],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 5.0,
                color: Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
              child: Center(
                child: Text(smallBox1, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),),
              ),
              onPressed: changeColor,
            ),
          ),
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: colorList[option2],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 5.0,
                color: Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
              child: Center(
                child: Text(smallBox2, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              onPressed: changeColor,
            ),
          ),
          Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: colorList[option3],
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 5.0,
                color: Colors.blueGrey[100]
              )
            ),
            child: RawMaterialButton(
              child: Center(
                child: Text(smallBox3, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white)),
              ),
              onPressed: changeColor,
            ),
          ),
              ],
            ),
          ),
          
         Padding(
           padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 30.0),
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
                Navigator.of(context).pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
                {option1=0;}
                {option2=0;}
                {option3=0;}
                },
              ),
            ),
         ),
        ],
      ),
    ),
  );
}