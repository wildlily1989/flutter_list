import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final title = 'basic list';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: title,
      home: new BasicList(title: title,),
    );
  }
}

class BasicList  extends StatelessWidget{
  final title;
  BasicList({Key key,this.title}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new ListView(
        children: [
          new ListTile(
            leading: new Icon(Icons.map),
            title: new Text('Map'),
          ),
          new ListTile(
            leading: new Icon(Icons.phone),
            title: new Text('Phone'),
          ),
          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text('Album'),
          ),

          new ListTile(
            leading: new Icon(Icons.photo),
            title: new Text('Album'),
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}
