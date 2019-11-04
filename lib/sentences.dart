import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

int attempt = 0;
bool correct = false;
int check = 0;
int sentenceIndex = 0;
String sentenceTitle;
AudioCache _player = AudioCache(prefix: 'sounds/');
final motivation = [
  "",
  "You're doing great!",
  "You are AWESOME!",
  "You nailed it!",
];


class Sentences extends StatefulWidget {
  @override
  _SentencesState createState() => _SentencesState();
}

class _SentencesState extends State<Sentences> with TickerProviderStateMixin {

  AnimationController _controller, _controller2;
  Animation _animation, _animation1, _animation2, _animation3;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    _animation = Tween(begin: 1.0, end: 0.635).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _controller2 = AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
    _animation3 = Tween(begin: -0.15, end: 0.0).animate(CurvedAnimation(parent: _controller2, curve: Interval(0.00, 0.33, curve: Curves.easeInOut)));
    _animation2 = Tween(begin: -0.15, end: 0.0).animate(CurvedAnimation(parent: _controller2, curve: Interval(0.33, 0.67, curve: Curves.easeInOut)));
    _animation1 = Tween(begin: -0.15, end: 0.0).animate(CurvedAnimation(parent: _controller2, curve: Interval(0.67, 1.00, curve: Curves.easeInOut)));

    _controller2.forward();
  }

  final textController = TextEditingController();

  @override
  void dispose(){
    _controller.dispose();
    _controller2.dispose();
    textController.dispose();
    super.dispose();
  }

  var _opacity = 1.0;
  

    void forwardAnimation(){
      setState(() {
       _opacity = 1.0;
      });
    }

    void reverseAnimation(){
      setState(() {
       _opacity = 0.0;
      });
    }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    Widget sentencesPage(String question, String smallBox1, String smallBox2, String smallBox3, int answer, String file){
    
    return ListView(
          children: <Widget>[
            Stack(
            children: <Widget> [
              AnimatedBuilder(
                animation: _controller2,
                builder: (BuildContext context, Widget child){
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
                      Text("Select the correct translation", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald'),),
                      Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Container(
                              height: 40.0,
                              width: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.amber
                              ),
                              child: IconButton(
                                icon: Icon(Icons.music_note),
                                onPressed: (){_player.play(file);},
                              ),
                            ),
                          ),
                          Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                AnimatedOpacity(
                                    duration: Duration(milliseconds: 400),
                                    opacity: _opacity,
                                    child: Text(question, style: TextStyle(fontSize: 24.0, fontFamily: 'Ranga'), maxLines: 4,)
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  ),
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
                  height: 250.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Transform(
                          transform: Matrix4.translationValues(0.0, _animation1.value * height, 0.0),
                          child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: attempt==1 ? 80.0 : 60.0,
                          decoration: BoxDecoration(
                            color: attempt==1 ? Colors.yellow : Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              width: 5.0,
                              color: attempt==1 ? Colors.black : Colors.blueGrey[100]
                            )
                          ),
                          child: RawMaterialButton(
                            child: Center(
                              child: Text(smallBox1, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Oswald'),),
                            ),
                            onPressed: (){setState(() {attempt=1;});},
                          ),
                        ),
                      ),
                      Transform(
                          transform: Matrix4.translationValues(0.0, _animation2.value * height, 0.0),
                          child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: attempt==2 ? 80.0 : 60.0,
                          decoration: BoxDecoration(
                            color: attempt==2 ? Colors.yellow : Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              width: 5.0,
                              color: attempt==2 ? Colors.black : Colors.blueGrey[100]
                            )
                          ),
                          child: RawMaterialButton(
                            child: Center(
                              child: Text(smallBox2, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Oswald')),
                            ),
                            onPressed: (){setState(() {attempt=2;});},
                          ),
                        ),
                      ),
                      Transform(
                          transform: Matrix4.translationValues(0.0, _animation3.value * height, 0.0),
                          child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          height: attempt==3 ? 80.0 : 60.0,
                          decoration: BoxDecoration(
                            color: attempt==3 ? Colors.yellow : Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              width: 5.0,
                              color: attempt==3 ? Colors.black : Colors.blueGrey[100]
                            )
                          ),
                          child: RawMaterialButton(
                            child: Center(
                              child: Text(smallBox3, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Oswald')),
                            ),
                            onPressed: (){setState(() {attempt=3;});},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 50.0),
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
                        child: Text("check", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Oswald')),
                      ),
                      onPressed: (){
                        if(attempt==answer){setState(() {correct=true;});}
                        else{setState(() {correct=false;});}
                        {_controller.forward();}
                        {_controller2.reverse();}
                        {reverseAnimation();}
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
  ),

        AnimatedBuilder(
          animation: _controller,
          builder: (BuildContext context, Widget child){
            return Transform(
              transform: Matrix4.translationValues(0.0, _animation.value * height, 0.0),
              child: Container(
                height: height / 3,
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
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.circular(35.0),
                      border: Border.all(
                        width: 5.0,
                        color: Colors.blueGrey[100]
                      )
                    ),
                    child: RawMaterialButton(
                    child: Center(
                      child: Text("next", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0, fontFamily: 'Oswald'),),
                    ),
                    onPressed: (){
                      {_controller.reset();}
                      {_controller2.forward();}
                      if(sentenceIndex==11 || sentenceIndex==23 || sentenceIndex==30 || sentenceIndex==39){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);}
                      if(sentenceIndex!=11 && sentenceIndex!=23 && sentenceIndex!=30 && sentenceIndex!=39){setState((){sentenceIndex++;});}
                      {attempt=0;}
                      {forwardAnimation();}
                      {textController.clear();}
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
      ),
      ]
    );
  }


  final translationQuestion = [
    "question1",
    "question2",
    "question3"
  ];

  final answer = [
    ["option1","option2","option3"],
    ["option1","option2","option3"],
    ["option1","option2","option3"],
  ];

  Widget translationPage(int index){
    return Stack(
          children: <Widget>[
            Container(
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                    child: Text("Translate this sentence", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald')),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                    child: AnimatedOpacity(
                      duration: Duration(milliseconds: 400),
                      opacity: _opacity,
                      child: Text(translationQuestion[index], style: TextStyle(fontSize: 20.0, fontFamily: 'Ranga'))
                      ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 1.7,
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
                          style: TextStyle(fontSize: 18.0, fontFamily: 'Oswald'),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 5.0),
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
                          child: Text("check", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Oswald')),
                        ),
                      onPressed: (){
                        for(String i in answer[index]){
                          if(i==textController.text){
                            check++;
                          }
                        }
                        {_controller.forward();}
                        {reverseAnimation();}
                      }
                      )
                    ),
                  ),
                ],
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
              color: check>0 ? Colors.green : Colors.red,
              child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,20.0,0.0,10.0),
                  child: Text(check>0 ? "Correct!" : "Incorrect", style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald')),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0,10.0,0.0,10.0),
                  child: Text(check>0 ? motivation[1] : ("Correct answer: " + answer[index][0]), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Oswald'),),
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
                    {_controller.reset();}
                    {forwardAnimation();}
                    if(sentenceIndex==11 || sentenceIndex==23 || sentenceIndex==30 || sentenceIndex==39){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);}
                    if(sentenceIndex!=11 && sentenceIndex!=23 && sentenceIndex!=30 && sentenceIndex!=39){setState((){sentenceIndex++;});}
                    {textController.clear();}
                    setState(() {check=0;});
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

final sentencesList = [
  sentencesPage("सहः पठति।", "He sleeps.", "He reads.", "She reads.", 2, 'sah pathati.wav'),
  sentencesPage("सा गच्छति।", "I go.", "She speaks.", "She goes.", 3, 'saa gachchhti.wav'),
  sentencesPage("अहं हसामि।", "He falls.", "I laugh.", "He swims.", 2, 'ahm hasaami.wav'),
  sentencesPage("त्वं लिखसि।", "You write.", "She laughs.", "I know.", 1, 'tvm likhasi.wav'),
  sentencesPage("गायकाः गायन्ति।", "Singers see.", "She saw.", "Singers sing.", 3, 'gayakaha gaayanti.wav'),
  sentencesPage("यूयं खादथ।", "We walk.", "You drink.", "You (all) eat.", 3, 'yooym khaadatha.wav'),
  sentencesPage("वयं नमामः।", "I greet.", "We see.", "We greet.", 3, 'vym namaamh.wav'),
  sentencesPage("वयं धावामः।", "She speaks.", "You listen.", "We run.", 3, 'vym dhaavaamh.wav'),
  sentencesPage("मित्राणि क्रीडन्ति।", "Friends play.", "He went.", "We go.", 1, 'mitraañi kridanti.wav'),
  sentencesPage("ताणि धावन्ति।", "I see.", "They run.", "They sleep.", 2, 'taañi dhaavanti.wav'),
  sentencesPage("रामः गृहम् आगच्छति।", "Ram went away.", "Ram comes home.", "This is Ram.", 2, 'ramh grihm aagachchhati.wav'),
  sentencesPage("एषा बाला फलं खादति।", "This girl eats fruit.", "This is the girl.", "This girl wants fruit.", 1, 'eshha baalaa phalm khaadati.wav'),

  sentencesPage("सहः पठति।", "She reads.", "He speaks.", "He reads.", 3, 'sah pathati.wav'),
  sentencesPage("सहः अपठत्।", "He read(past).", "He reads.", "It falls.", 1, 'sah apathhat.wav'),
  sentencesPage("सिंहः मृगम् अमारयत्।", "Lion and deer.", "Lion killed the deer.", "He killed the lion.", 2, 'Sinhh mrigm amaaryat.wav'),
  sentencesPage("ते अहसन्।", "They saw.", "She laughed.", "They laughed.", 3, 'te ahasan.wav'),
  sentencesPage("चोराः पेटिकाम् अहरन्।", "They opened the box.", "Thieves stole the box.", "Thieves opened the box.", 2, 'choraha petikaam aharan.wav'),
  sentencesPage("नर्तकाहाः नृत्यन्ति।", "Dancers dance.", "Dancers sat down.", "They laughed.", 1, 'nartakaah nrityanti.wav'),
  sentencesPage("शिष्यः नमति।", "Student greets.", "This is student.", "She regrets.", 1, 'shishhyh namati.wav'),
  sentencesPage("वयं संस्कृत वदामः।", "Let's learn Sanskrit.", "We speak Sanskrit.", "Speak Sanskrit.", 2, 'vaym sanskrit vadaamh.wav'),
  sentencesPage("अहं संस्कृतपंडितः भविष्यामि।", "She is a Sanskrit master.", "I'll become a Sanskrit master.", "Master will teach Sanskrit.", 2, 'ahm sanskritpandit bhavishhyami.wav'),
  sentencesPage("दुष्टान् देवः दण्डयिष्यति।", "Evil may die.", "Evil will die.", "God will punish the evil.", 3, 'dushhtaan devh dañdishhyati.wav'),
  sentencesPage("सा अन्यायं न सहिष्यते।", "He cannot bear.", "Bear injustice.", "She will not bear injustice.", 3, 'saa anyaaym na sahishhyate.wav'),
  sentencesPage("अग्रिमसप्ताहे गुरुः व्याकरणं पाठयिष्यति।", "Teacher will teach grammar next week.", "Grammar will be taught next week.", "They will learn Grammar.", 1, 'agrimsaptaahe guruh vyaakarañm paathhishhyati.wav'),

  sentencesPage("तत् पतति।", "It falls.", "It fell.", "She fell.", 1, ''),
  sentencesPage("एषः रामः अस्ति।", "This is Ram.", "That is Ram.", "Ram is good.", 1, ''),
  sentencesPage("छात्रा नमति शिक्षकः।", "Student(male) greets teacher.", "Teacher greets student.", "Student(female) greets teacher.", 3, ''),
  sentencesPage("ताः अगच्छन्", "He fell.", "They(female) went.", "She went.", 2, ''),
  sentencesPage("ते आगमिष्यति।", "He speaks.", "He should speak.", "They(male) will come.", 3, ''),
  sentencesPage("सहः अनमत्।", "They went.", "He greeted.", "She spoke.", 2, ''),
  sentencesPage("सा वदष्यति।", "He will speak.", "She spoke.", "She will speak.", 3, ''),

  sentencesPage("बालः क्रीडति।", "Boy plays.", "Boy sits.", "Boys sit.", 1, ''),
  sentencesPage("महिले पचन्ति तण्डुल।", "Women(two) cook rice.", "Woman picks up pot.", "Women cook rice", 1, ''),
  sentencesPage("छात्राः पाठं पठन्ति।", "Students read the poem.", "Student reads the chapter.", "Students read the chapter.", 3, ''),
  sentencesPage("गायकौ गीतं गायन्ति।", "Dancers dance.", "Teachers recited the hymn.", "Singers(two) sing the song.", 3, ''),
  sentencesPage("शिक्षिका श्लोकं वदति।", "Students play the instrument.", "Teacher says(recites) the hymn.", "Teachers say(recite) the hymn.", 2, ''),
  sentencesPage("मित्राणि क्रीडन्ति।", "Friends play.", "He plays.", "Students play.", 1, ''),
  sentencesPage("आवाम् खादथः तण्डुल।", "You(all) eat rice.", "We drink milk.", "We(two) eat rice.", 3, ''),
  sentencesPage("युवाम् पठावः।", "We read.", "I write.", "You(two) read.", 3, ''),
  sentencesPage("यूयं पीबथ क्षीरम्।", "You(two) drink milk.", "You(all) drink milk.", "Let us drink milk.", 2, ''),
];

var sentence = sentencesList[sentenceIndex];


    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(sentenceTitle, style: TextStyle(fontFamily: 'Oswald'),),
        actions: <Widget>[IconButton(icon: Icon(Icons.close), onPressed: (){Navigator.of(context).pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false); attempt=0; sentenceIndex=0;},)],
      ),

      body: sentence,
    );
  }
}