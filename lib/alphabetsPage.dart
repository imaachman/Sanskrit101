import 'package:flutter/material.dart';

int option1 = 0;
int option2 = 0;
int option3 = 0;
int option4 = 0;
final colorList = [Colors.lightBlue, Colors.green, Colors.red];

Widget alphabetsPage(String bigBox, String smallBox1, String smallBox2, String smallBox3, String smallBox4, Function changeColor, String route, BuildContext context){    
   
   return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                color: Colors.lightBlue,
                border: Border.all(
                  width: 10.0,
                  color: Colors.blueGrey[100]
                )
              ),
              child: Center(
                child: Text(bigBox, style: TextStyle(fontSize: 80.0, color: Colors.white)),
              )
            )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: colorList[option1],
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      width: 10.0,
                      color: Colors.blueGrey[100]
                    )
                  ),
                  child: RawMaterialButton(
                      child: Text(smallBox1, style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: changeColor
                    ),
                  ),

                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: colorList[option2],
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      width: 10.0,
                      color: Colors.blueGrey[100]
                    )
                  ),
                  child: RawMaterialButton(
                      child: Text(smallBox2, style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: changeColor
                    ),
                  ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: colorList[option3],
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      width: 10.0,
                      color: Colors.blueGrey[100]
                    )
                  ),
                  child: RawMaterialButton(
                      child: Text(smallBox3, style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: changeColor
                    ),
                  ),

                Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    color: colorList[option4],
                    borderRadius: BorderRadius.circular(35.0),
                    border: Border.all(
                      width: 10.0,
                      color: Colors.blueGrey[100]
                    )
                  ),
                  child: RawMaterialButton(
                      child: Text(smallBox4, style: TextStyle(fontSize: 40.0, color: Colors.white)),
                      onPressed: changeColor
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
                child: Text("next", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0),),
              ),
              onPressed: (){
                Navigator.of(context).pushNamedAndRemoveUntil(route, (Route<dynamic> route) => false);
                {option1=0;}
                {option2=0;}
                {option3=0;}
                {option4=0;}
              },
            )
            )
          ],
        ),
      );
  }

