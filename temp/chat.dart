import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {

  ChatMessage({this.text, this.name, this.type});
  final String text, name;
  final bool type;

  List<Widget> otherMessage(context){
    return <Widget>[
      Container(
        margin: EdgeInsets.only(right: 16),
        child: CircleAvatar(
          child: Text('B'),
        ),
      ),
      new Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold),),
            Container(margin: EdgeInsets.only(top: 5), child: Text(text),)
          ],
        ),
      )
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name, style: Theme.of(context).textTheme.subhead),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(
            child: new Text(
              this.name[0],
              style: new TextStyle(fontWeight: FontWeight.bold),
            )),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}