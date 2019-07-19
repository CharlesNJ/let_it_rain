import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MakeItRainState();
  }

}


class MakeItRainState extends State<MakeItRain> {


  int _moneyCounter = 0;
   void _rainMoney(){

    //setState is called each time we need to update the UI
    setState(() {
      _moneyCounter = _moneyCounter+100;
    });

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Let it rain!'),
        backgroundColor: Colors.amberAccent,
      ),
          body: new Container(
              child: new Column(
                children: <Widget>[
                  new Center(

                          child: new Text('Get Rich',
                          style: new TextStyle(color: Colors.blue,
                              fontSize: 29.9, fontWeight: FontWeight.w400)),
              ),
                    new Expanded(
                    child: new Center(

                            child: new Text("\$$_moneyCounter",
                            style: new TextStyle(
                              color: _moneyCounter >2000 ? Colors.yellow:Colors.blue,
                              fontSize: 46.9,
                              fontWeight: FontWeight.w900
    ),)
    )),
                    new Expanded(
                      child: new Center(
                        child: new FlatButton(
                          onPressed: _rainMoney,
                             color: Colors.lightGreen,

                          child: new Text('Let it Rain!', style: new TextStyle(
                    fontSize: 20.0)
                  )),
    ))


        ]
    )
    )
    );
  }
}