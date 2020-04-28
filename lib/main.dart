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
//      home: new BasicList(title: title,),
    home: new ListBuilder(),
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

class ListBuilder extends StatelessWidget{
  final items = new List<String>.generate(10000, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('List Builder'),
      ),
      body: new ListView.builder(
      itemCount: items.length,
      itemBuilder: (context,index){
        return new ListTile(
          title: new Text('${items[index]}'),
        );
      },),
    );
    throw UnimplementedError();
  }
  
}
