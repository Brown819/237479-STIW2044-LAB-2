import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    final alucard = new Hero(
      tag: 'hero',
      child: new Padding(
        padding: new EdgeInsets.all(16.0),
        child: new CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: new AssetImage('assets/alucard.jpg'),
        ),
      ),
    );

    final welcome = new Padding(
      padding: new EdgeInsets.all(8.0),
      child:  new Text(
        'Welcome Laundry System',
        style:  new TextStyle(
          fontSize: 28.0,
          color: Colors.white
        ),
      )
    );

    final lorem = new Padding(
      padding: new EdgeInsets.all(8.0),
      child: new Text(
        '''
        content content content content  content content content content content content content content content content content content content content content content content content content content content content content content content content content content content content content 
        
         content content content content content content content content content content content content content content content content content content content content content content content content content content content content content
        
        ''',
        style: new TextStyle(
          fontSize: 16.0,
          color: Colors.white
        ),
      ),
    );
    final body = new Container(
      width: MediaQuery.of(context).size.width,
      padding: new EdgeInsets.all(28.0),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: [Colors.blue,Colors.lightBlueAccent]
        )
      ),
      child: new Column(
        children: <Widget>[
          alucard,
          welcome,
          lorem
        ],
      ),
    );

    return new Scaffold(
      body: body,
    );
  }
}